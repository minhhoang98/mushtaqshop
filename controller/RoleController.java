package mushtaq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mushtaq.dao.RoleDao;
import mushtaq.entity.Role;
import mushtaq.service.RoleService;

@Controller
@RequestMapping(value = "")
public class RoleController {
	@Autowired
	private RoleService service;
	@Autowired
	private RoleDao dao;

	@RequestMapping(value = { "/list-role" }, method = RequestMethod.GET)
	public String listrole(Model model) {
		model.addAttribute("list", service.findAll());
		return "list-role";
	}

	@RequestMapping("/save-role")
	public String insertRole(Model model) {
		model.addAttribute("role", new Role());
		return "save-role";
	}

	@RequestMapping(value = "/saverole", method = RequestMethod.GET)
	public ModelAndView doSaveRole(ModelMap model, @RequestParam("rolename") String rolename,
			@ModelAttribute("role") Role role) {
		ModelAndView mv = new ModelAndView();
		role.setRolename(rolename);
		String user = dao.ckeck(role);
		if (user.equals("0")) {
			service.save(role);
			model.addAttribute("list", service.findAll());
			mv.setViewName("list-role");
		} else {
			mv.setViewName("save-role");
			mv.addObject("msg", "Đã có tên mời bạn nhập lại nhé");
			model.addAttribute("list", service.findAll());
		}

		return mv;
	}

	@RequestMapping("/update-role/{roleid}")
	public String updatenrole(@PathVariable int roleid, Model model) {
		Role role = service.findById(roleid);
		model.addAttribute("role", role);
		return "update-role";
	}

	@RequestMapping("/updaterole")
	public String doUpdaterole(Model model, @ModelAttribute("role") Role role) {
		service.update(role);
		model.addAttribute("list", service.findAll());
		return "list-role";
	}

	@SuppressWarnings("finally")
	@RequestMapping("/roleDelete/{roleid}")
	public String doDeleterole(@PathVariable int roleid, Model model) {

		try {
			service.delete(roleid);
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			model.addAttribute("list", service.findAll());
			return "list-role";
		}
	}

}