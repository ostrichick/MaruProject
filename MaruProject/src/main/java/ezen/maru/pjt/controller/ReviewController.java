package ezen.maru.pjt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReviewController {

    @ResponseBody
    @RequestMapping(value = "/reviews", method = RequestMethod.POST)
    public String create(@ModelAttribute Review review) {
        return review.toString();
    }
    
}
