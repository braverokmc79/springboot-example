package com.example.service;

import com.example.model.vo.KeywordVO;
import com.example.model.vo.ScoreVO;
import com.example.model.vo.UserVO;

public interface DBupdateService {

	public void dbUpdate(UserVO userVO, KeywordVO  keywordVO, ScoreVO scoreVO) throws Exception;
}
