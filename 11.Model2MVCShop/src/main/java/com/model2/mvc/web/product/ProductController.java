package com.model2.mvc.web.product;

import java.io.File;
import java.net.URLDecoder;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.board.product.ProductBoardService;
import com.model2.mvc.service.domain.Discount;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.domain.ProductBoard;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.product.ProductService;
import com.model2.mvc.service.purchase.PurchaseService;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;
	
	@Autowired
	@Qualifier("purchaseServiceImpl")
	private PurchaseService purchaseService;
	
	@Autowired
	@Qualifier("productBoardServiceImpl")
	private ProductBoardService productBoardService;

	public ProductController() {
		System.out.println(this.getClass());
	}
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	/*@RequestMapping("addProduct")
	public ModelAndView addProduct(@ModelAttribute("productBoard") ProductBoard productBoard,
									@ModelAttribute("product")Product product) throws Exception{
		System.out.println("/addProduct");

		productBoardService.addProductBoard(productBoard);
		
		String manuDate = product.getManuDate().replaceAll("-", "");
		product.setManuDate(manuDate);
		
		for(int i=0;i<productBoard.getQuantity();i++) {
			productService.addProduct(product);			
		}
		
		
		ModelAndView modelAndView=new ModelAndView();		
		modelAndView.addObject("product", product);
		modelAndView.addObject("productBoard", productBoard);
		
		modelAndView.setViewName("forward:/product/successAddProduct.jsp");
		
		return modelAndView;
	}*/
	
	@RequestMapping("addProduct")
	public ModelAndView addProduct(HttpServletRequest request,
									HttpServletResponse response,
									@ModelAttribute("productBoard") ProductBoard productBoard,
									@ModelAttribute("product") Product product) throws Exception{
		System.out.println("/addProduct");

		/*String path = "//Users//munmyeonghwan//git//07Model2MVCShop//07.Model2MVCShop(URI,pattern)//WebContent//images//uploadFiles//";*/
		String path = "C:\\Users\\USER\\git\\10Model2MVCShopAjax\\10.Model2MVCShop(Ajax)\\WebContent\\images\\uploadFiles\\";
		
		
		MultipartFile uploadfile = productBoard.getUploadFile();
		
		UUID uuid = UUID.randomUUID();
		String fileName = uuid+"_"+uploadfile.getOriginalFilename();
		
		
		if(fileName.equals("")) {
			productBoard.setFileName("no_detail_img.gif");
		}else {
			productBoard.setFileName(fileName);
			
			uploadfile.transferTo(new File(path+fileName));
		}

		
		productBoardService.addProductBoard(productBoard);
		
		String manuDate = product.getManuDate().replaceAll("-", "");
		product.setManuDate(manuDate);
		
		for(int i=0;i<productBoard.getQuantity();i++) {
			productService.addProduct(product);			
		}
		
		
		ModelAndView modelAndView=new ModelAndView();		
		modelAndView.addObject("product", product);
		modelAndView.addObject("productBoard", productBoard);
		
		modelAndView.setViewName("forward:/product/successAddProduct.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping("getProduct")
	public ModelAndView getProduct(@RequestParam("boardNo") int boardNo,
								@RequestParam("menu") String menu,
								HttpServletRequest request,
								HttpServletResponse response,
								HttpSession session
								) throws Exception{
		System.out.println("/getProduct");
		
		User user=(User)session.getAttribute("user");
		
		if(menu.equals("search")) {
			productBoardService.addViewCount(boardNo);
		}
		
		Map<String,Object> map = productBoardService.getProductBoardByBoardNo(boardNo);
		ProductBoard productBoard = (ProductBoard)map.get("productBoard");
		Discount discount = (Discount)map.get("discount");
		
		Product product = productService.getProductByBoardNo(boardNo);
		
		int purchaseCount = purchaseService.getCountPurchase(user.getUserId());
		int price=product.getPrice();
		if(productBoard.getBoardNo()==discount.getDiscountBoard()) {
			price=(int)(product.getPrice()*0.75);
		}
		if(purchaseCount % 4 == 0) {
			price=(int)(price*0.9);
		}
		product.setResultPrice(price);
		
		/*if(product.getFileName() == null) {
			product.setFileName("no_detail_img.gif");
		}*/
		
		//////////////Cookie//////////////////
		Cookie[] cookies = request.getCookies();
		Cookie cookie = null;

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("history")) {
					cookie = cookies[i];
					break;
				}
			}

		}
		if (cookie != null) {
			cookie = new Cookie("history", cookie.getValue() + "," + product.getProdNo());
			cookie.setPath("/");
			response.addCookie(cookie);
		} else {
			cookie = new Cookie("history", String.valueOf(product.getProdNo()));
			cookie.setPath("/");
			response.addCookie(cookie);
		}
		//////////////Cookie//////////////////
		String viewName="";
		if (menu != null) {
			if (menu.equals("search")) {
				viewName= "forward:/product/getProduct.jsp";
			}else {
				viewName="forward:/product/updateProductView.jsp";
			}
		}

		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName(viewName);
		modelAndView.addObject("productBoard", productBoard);
		modelAndView.addObject("product", product);
		modelAndView.addObject("discount", discount);
		modelAndView.addObject("user", user);
		modelAndView.addObject("purchaseCount", purchaseCount);
		
		return modelAndView;
	}	

	
	@RequestMapping(value="listProduct")
	public ModelAndView getListProduct(HttpServletRequest request,
									@ModelAttribute("search") Search search,
									@ModelAttribute("page") Page page,
									@RequestParam("menu") String menu
									) throws Exception {
		System.out.println("/listProduct");
		
		page.setPageUnit(pageUnit);
		
		if(page.getPageSize()==0) {
		page.setPageSize(pageSize);
		}
		
		if(search.getSearchKeyword()!=null) {
			if(request.getMethod().equals("GET")) {
//				search.setSearchKeyword(CommonUtil.convertToKo(request.getParameter("searchKeyword")));
				search.setSearchKeyword(URLDecoder.decode(search.getSearchKeyword(), "EUC-KR"));
				System.out.println("GET������� ����");
			}else {
				search.setSearchKeyword(search.getSearchKeyword());
				System.out.println("POST������� ����, SearchKeyword :: "+search.getSearchKeyword());
			}
		}
		
		search.setPageSize(page.getPageSize());
		
//		Map<String,Object> map=productService.getProductList(search);
		Map<String,Object> map = productBoardService.getProductBoardList(search);
		
		Page resultPage=new Page(search.getCurrentPage(),((Integer)map.get("totalCount")).intValue(), page.getPageUnit(), page.getPageSize());

		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("discount", map.get("discount"));
		modelAndView.addObject("resultPage", resultPage);
		modelAndView.addObject("search", search);
		modelAndView.setViewName("forward:/product/listProduct.jsp");
		
		return modelAndView;
		
	}
	
	@RequestMapping("updateProduct")
	public ModelAndView updateProduct(@ModelAttribute("product") Product product,
										@ModelAttribute("productBoard")ProductBoard productBoard,
										HttpSession session
										) throws Exception{
		
		System.out.println("/updateProduct.do");
		
		
		productBoardService.modifyProductBoard(productBoard);
		productService.updateProduct(product);
		
		product =  productService.getProductByBoardNo(productBoard.getBoardNo());
		
		Map<String,Object> mapProdBoard = productBoardService.getProductBoardByBoardNo(productBoard.getBoardNo());
		productBoard = (ProductBoard)mapProdBoard.get("productBoard");
		Discount discount = (Discount)mapProdBoard.get("discount");
		
		User user = (User)session.getAttribute("user");
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("forward:/product/getProduct.jsp");
		modelAndView.addObject("productBoard", productBoard);
		modelAndView.addObject("product", product);
		modelAndView.addObject("discount", discount);
		modelAndView.addObject("user", user);
		modelAndView.addObject("purchaseCount", purchaseService.getCountPurchase(user.getUserId()));
		
		return modelAndView;
	}
	
	
	

}
