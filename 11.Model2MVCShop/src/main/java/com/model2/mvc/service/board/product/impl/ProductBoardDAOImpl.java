package com.model2.mvc.service.board.product.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.board.product.ProductBoardDAO;
import com.model2.mvc.service.domain.Comments;
import com.model2.mvc.service.domain.Discount;
import com.model2.mvc.service.domain.ProductBoard;

@Repository("productBoardDAOImpl")
public class ProductBoardDAOImpl implements ProductBoardDAO {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public ProductBoardDAOImpl() {
		System.out.println("ProductBoardDAOImpl");
	}

	@Override
	public void insertProductBoard(ProductBoard productBoard) throws Exception {
		sqlSession.insert("ProductBoardMapper.insertProductBoard", productBoard);	
	}

	@Override
	public ProductBoard selectProductBoardByBoardNo(int boardNo) throws Exception {
		return sqlSession.selectOne("ProductBoardMapper.getProductBoard", boardNo);
	}

	@Override
	public List<ProductBoard> selectProductBoardList(Search search) throws Exception {
		return sqlSession.selectList("ProductBoardMapper.getProductBoardList", search);
	}

	@Override
	public void updateProductBoard(ProductBoard productBoard) throws Exception {
		sqlSession.update("ProductBoardMapper.updateProductBoard", productBoard);		
	}

	@Override
	public void deleteProductBoardByBoardNo(int boardNo) throws Exception {
		sqlSession.delete("ProductBoardMapper.deleteProductBoard", boardNo);
		
	}

	@Override
	public void updateViewCount(int boardNo) throws Exception {
		sqlSession.update("ProductBoardMapper.addViewCount", boardNo);
	}

	@Override
	public Discount selectDiscountProdBoard() throws Exception {
		return sqlSession.selectOne("ProductBoardMapper.selectDiscountProdBoard");
	}

	@Override
	public void insertDiscountProdBoard(Discount discount) throws Exception {
		sqlSession.insert("ProductBoardMapper.insertDiscountProdBoard", discount);
	}

	@Override
	public int selectRandomProdBoardNo() throws Exception {
		return sqlSession.selectOne("ProductBoardMapper.getRandomProdBoardNo");
	}

	@Override
	public int selectTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("ProductBoardMapper.getTotalCount", search);
		
	}

	@Override
	public List<ProductBoard> selectTitleByKeyword(String searchKeyword) throws Exception {
		return sqlSession.selectList("ProductBoardMapper.getTitleByKeyword", searchKeyword);
	}

	@Override
	public List<Comments> selectCommentsList(int boardNo) throws Exception {
		return sqlSession.selectList("ProductBoardMapper.selectCommentsList", boardNo);
	}

	@Override
	public void insertComments(Comments comments) throws Exception {
		sqlSession.insert("ProductBoardMapper.insertCommnets", comments);
	}


}
