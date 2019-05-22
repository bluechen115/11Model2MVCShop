package com.model2.mvc.service.purchase.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.service.domain.Code;
import com.model2.mvc.service.domain.Purchase;
import com.model2.mvc.service.purchase.PurchaseDao;

@Repository("purchaseDaoImpl")
public class PurchaseDaoImpl implements PurchaseDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public PurchaseDaoImpl() {
	}

	@Override
	public Purchase findPurchase(int no) throws Exception {
		return sqlSession.selectOne("PurchaseMapper.findPurchase", no);
	}

	@Override
	public List<Purchase> getPurchaseList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("PurchaseMapper.getPurchaseList", map);
	}

	@Override
	public List<Purchase> getPurchaseListByUserId(String userId) throws Exception {
		return sqlSession.selectList("PurchaseMapper.getPurchaseListByUserId", userId);
	}

	@Override
	public List<Purchase> getCancelListByUserId(String userId) throws Exception {
		return sqlSession.selectList("PurchaseMapper.getCancelListByUserId",userId);
	}
	
	@Override
	public void insertPurchase(Purchase purchase) throws Exception {
		sqlSession.insert("PurchaseMapper.insertPurchase", purchase);
		
	}

	@Override
	public void updatePurchase(Purchase purchase) throws Exception {
		sqlSession.update("PurchaseMapper.updatePurchase", purchase);
		
	}

	@Override
	public void updateTranCode(Purchase purchase) throws Exception {
		sqlSession.update("PurchaseMapper.updateTranCode", purchase);
		
	}

	@Override
	public int getgetTotalCount(Map<String, Object> map) throws Exception {
		return sqlSession.selectOne("PurchaseMapper.getTotalCount", map);
	}

	@Override
	public List<Code> codeCall(String groupId) throws Exception {
		return sqlSession.selectList("PurchaseMapper.codeCall", groupId);
	}

	@Override
	public int getCountPurchaseByUserId(String buyerId) throws Exception {
		return sqlSession.selectOne("PurchaseMapper.getCountPurchaseByUserId", buyerId);
	}

	@Override
	public int getCountCancelPurchase(String buyerId) throws Exception {
		return sqlSession.selectOne("PurchaseMapper.getCountCancelPurchase", buyerId);
	}



}
