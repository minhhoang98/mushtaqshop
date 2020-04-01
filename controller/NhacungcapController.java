package mushtaq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import mushtaq.entity.Nhacungcap;
import mushtaq.service.KhachhangService;
import mushtaq.service.NhacungcapService;

@Controller
public class NhacungcapController {

	@Autowired
	private KhachhangService khachhangService;
	
	@Autowired
	private NhacungcapService nhacungcapService;

	@RequestMapping( "/nhacungcap-list" )
	public String listNhacungcap(Model model) {
		model.addAttribute("listNhacungcap", nhacungcapService.findAll());
		return "nhacungcap-list";
	}

	@RequestMapping("/nhacungcap-save")
	public String insertNhacungcap(Model model) {
		model.addAttribute("nhacungcap", new Nhacungcap());
		return "nhacungcap-save";
	}

	@RequestMapping("/nhacungcap-view/{id}")
	public String viewNhacungcap(@PathVariable int id, Model model) {
		Nhacungcap nhacungcap = nhacungcapService.findById(id);
		model.addAttribute("nhacungcap", nhacungcap);
		return "nhacungcap-view";
	}

	@RequestMapping("/nhacungcap-update/{id}")
	public String updateNhacungcap(@PathVariable int id, Model model) {
		Nhacungcap nhacungcap = nhacungcapService.findById(id);
		model.addAttribute("nhacungcap", nhacungcap);
		return "nhacungcap-update";
	}

	@RequestMapping("/saveNhacungcap")
	public String doSaveNhacungcap(@ModelAttribute("Nhacungcap") Nhacungcap nhacungcap, Model model) {
		nhacungcapService.save(nhacungcap);
		model.addAttribute("listNhacungcap", nhacungcapService.findAll());
		return "nhacungcap-list";
	}

	@RequestMapping("/updateNhacungcap")
	public String doUpdateNhacungcap(@ModelAttribute("Nhacungcap") Nhacungcap nhacungcap, Model model) {
		nhacungcapService.update(nhacungcap);
		model.addAttribute("listNhacungcap", nhacungcapService.findAll());
		return "nhacungcap-list";
	}

	@RequestMapping("/deleteNhacungcap/{id}")
	public String doDeleteNhacungcap(@PathVariable int id, Model model) {
		nhacungcapService.delete(id);
		model.addAttribute("listNhacungcap", nhacungcapService.findAll());
		return "nhacungcap-list";
	}
}
