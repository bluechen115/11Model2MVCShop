package com.model2.mvc.service.board.product.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.board.product.ProductBoardDAO;
import com.model2.mvc.service.board.product.ProductBoardService;
import com.model2.mvc.service.domain.Discount;
import com.model2.mvc.service.domain.ProductBoard;

@Service("productBoardServiceImpl")
public class ProductBoardServiceImpl implements ProductBoardService {

	@Autowired
	@Qualifier("productBoardDAOImpl")
	private ProductBoardDAO productBoardDAO;
	
	@Override
	public void addProductBoard(ProductBoard productBoard) throws Exception {
		productBoardDAO.insertProductBoard(productBoard);
	}

	@Override
	public Map<String,Object> getProductBoardByBoardNo(int boardNo) throws Exception {
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("productBoard", productBoardDAO.selectProductBoardByBoardNo(boardNo));
		map.put("discount", productBoardDAO.selectDiscountProdBoard());
		return map;
	}

	@Override
	public Map<String,Object> getProductBoardList(Search search) throws Exception {
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("list", (List<ProductBoard>)productBoardDAO.selectProductBoardList(search));
		System.out.println("list size :: "+productBoardDAO.selectProductBoardList(search).size());
		map.put("totalCount", productBoardDAO.selectTotalCount(search));
		
		Discount discount = productBoardDAO.selectDiscountProdBoard();
		if(discount==null) {
			int discountProdBoardNo = productBoardDAO.selectRandomProdBoardNo();
			discount=new Discount();
			discount.setDiscountBoard(discountProdBoardNo);
			productBoardDAO.insertDiscountProdBoard(discount);
		}
		map.put("discount", discount);
		
		return map;
	}

	@Override
	public void modifyProductBoard(ProductBoard productBoard) throws Exception {
		productBoardDAO.updateProductBoard(productBoard);
	}

	@Override
	public void removeProductBoardByBoardNo(int boardNo) throws Exception {
		productBoardDAO.deleteProductBoardByBoardNo(boardNo);

	}

	@Override
	public void addViewCount(int boardNo) throws Exception {
		productBoardDAO.updateViewCount(boardNo);

	}

	@Override
	public List<ProductBoard> getTitleByKeyword(String searchKeyword) throws Exception {
		return productBoardDAO.selectTitleByKeyword(searchKeyword);
	}

}
