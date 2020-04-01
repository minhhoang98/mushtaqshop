package mushtaq.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mushtaq.entity.Khachhang;
import mushtaq.service.KhachhangService;
import mushtaq.service.NhacungcapService;


@Controller
public class KhachhangController {

	@Autowired
	private KhachhangService khachhangService;
	
	@Autowired
	private NhacungcapService nhacungcapService;

	@RequestMapping(value = {"/khachhang-list" }, method = RequestMethod.GET)
	public String listKhachhang(Model model) {
		model.addAttribute("listKhachhang", khachhangService.findAll());
		return "khachhang-list";
	}

	@RequestMapping("/khachhang-save")
	public String insertKhachhang(Model model) {
		model.addAttribute("khachhang", new Khachhang());
		return "khachhang-save";
	}

	@RequestMapping("/khachhang-view/{id}")
	public String viewKhachhang(@PathVariable int id, Model model) {
		Khachhang khachhang = khachhangService.findById(id);
		model.addAttribute("khachhang", khachhang);
		return "khachhang-view";
	}

	@RequestMapping("/khachhang-update/{id}")
	public String updateKhachhang(@PathVariable int id, Model model) {
		Khachhang khachhang = khachhangService.findById(id);
		model.addAttribute("khachhang", khachhang);
		return "khachhang-update";
	}

	@RequestMapping("/saveKhachhang")
	public String doSaveKhachhang(@ModelAttribute("Khachhang") Khachhang khachhang, Model model) {
		khachhangService.save(khachhang);
		model.addAttribute("listKhachhang", khachhangService.findAll());
		return "khachhang-list";
	}

	@RequestMapping("/updateKhachhang")
	public String doUpdateKhachhang(@ModelAttribute("Khachhang") Khachhang khachhang, Model model) {
		khachhangService.update(khachhang);
		model.addAttribute("listKhachhang", khachhangService.findAll());
		return "khachhang-list";
	}

	@RequestMapping(value = "/deleteKhachhang/{id}", method = RequestMethod.GET)
	public String doDeleteKhachhang(@PathVariable int id, Model model) {
		khachhangService.delete(id);
		model.addAttribute("listKhachhang", khachhangService.findAll());
		return "khachhang-list";
	}
}
