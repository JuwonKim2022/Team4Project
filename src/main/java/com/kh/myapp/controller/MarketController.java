package com.kh.myapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.market.myapp.domain.MarketDTO;
import net.market.myapp.service.MarketService;

@Controller
public class MarketController {
	@Resource(name = "marketService")
	private MarketService marketService;

	@RequestMapping(value = "/MarketMapPage", method = RequestMethod.GET)
	public String MapGet() {
		return "MarketMapPage";
	}

	/*
	 * @RequestMapping(value = "/list", method = RequestMethod.GET) public String
	 * list(Model model) throws Exception { List<MarketDTO> marketList =
	 * marketService.selectAll(); model.addAttribute("marketList", marketList);
	 * return "list"; }
	 * 
	 * @RequestMapping(value = "/list2", method = RequestMethod.GET) public String
	 * list2(Model model) throws Exception { String district = "종로구";
	 * List<MarketDTO> marketList = marketService.selectByDistrict(district);
	 * model.addAttribute("marketList", marketList); return "list2"; }
	 */

	@ResponseBody
	@RequestMapping(value = "/MarketMapPage/map/search", method = RequestMethod.POST)
	public List<MarketDTO> marketAnalysis(Model model) throws Exception {
		String district = "";
		System.out.println(district);
		List<MarketDTO> marketList = marketService.selectDataByDYQ(district);
		model.addAttribute("marketList", marketList);
		return marketList;
	}

	// 작동
	@ResponseBody
	@RequestMapping(value = "/MarketMapPage/map/analysis", method = RequestMethod.POST)
	public List<MarketDTO> marketAnalysis(Model model, @RequestParam String district) throws Exception {
		List<MarketDTO> marketList = marketService.selectDataByDYQ(district);
		model.addAttribute("marketList", marketList);
		return marketList;
	}
}
