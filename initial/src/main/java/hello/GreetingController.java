package hello;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class GreetingController {
	private final Logger logger = LoggerFactory.getLogger(GreetingController.class);

    @GetMapping("/greeting")
    public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name, Model model) {
        model.addAttribute("name", name);
        return "greeting";
    }
    
    @RequestMapping(value = "/test")
    public String response(@RequestParam("name") String name, Model model) {
       if(name.equalsIgnoreCase("sikuli")){
//            sikuliService.test(model);
    	   try {
    		   Test test = new Test();
               test.readUtilFile(model);
    	   }
    	   catch(Exception e) {
    		   logger.debug("Error :" + e);
    	   }
        }
       model.addAttribute("user",name);
        return "test";
    }
    
//    @RequestMapping(value = "/test")
//    public ModelAndView response(@RequestParam("name") String name) {
//        ModelAndView model = new ModelAndView();
//        if(name.equalsIgnoreCase("sikuli")){
//            sikuliService.test(model);
//        }
//        model.setViewName("test");
//        model.addObject("user",name);
//        return model;
//    }
    
//    @GetMapping("/")
//    public String index(Map<String, Object> model) {
//        logger.debug("index() is executed!");
//        logger.debug("Model:"+model);
////        model.put("title", SikuliService.getTitle(""));
////        model.put("msg", SikuliService.getDesc());
//        return "index";
//    }
    
    @GetMapping("/welcome")
    public String welcome(Map<String, Object> model) {
        logger.debug("index() is executed!");
        logger.debug("Model:"+model);
//        model.put("title", SikuliService.getTitle(""));
//        model.put("msg", SikuliService.getDesc());
        return "welcome";
    }

}