/**
 * 
 */
package ezen.maru.pjt.service.faq;

import org.springframework.stereotype.Service;

import ezen.maru.pjt.dao.BoardDao;


@Service("f_list")
public class FaqListService implements FaqService {
	private BoardDao boardDao;
}
