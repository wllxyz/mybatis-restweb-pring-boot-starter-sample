package com.zitech.wll.deltamath_rest_service_sample.Controller;

import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.zitech.wll.deltamath_rest_service_sample.mapper.CityMapper;
import com.zitech.wll.deltamath_rest_service_sample.domain.City;

@RestController
public class CityController {

    @Autowired
    private CityMapper cityMapper;

    @RequestMapping("/getCityNameByState")
    public String getCityNameByState(@RequestParam(value="state", defaultValue="CA") String name) {
    	City city = this.cityMapper.findByState(name);
    	return city.getName();
    }
    
    @RequestMapping("/getCityById")
    public City getCityById(@RequestParam(value="id", defaultValue="1") int id) {
    	City city = this.cityMapper.findById(id);
    	return city;
    }    
}
