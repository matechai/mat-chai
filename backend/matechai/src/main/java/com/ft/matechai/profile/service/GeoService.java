package com.ft.matechai.profile.service;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class GeoService {

    private final RestTemplate restTemplate = new RestTemplate();

    public IpApiResponse getLocation(String ip) {

        String url = "http://ip-api.com/json/" + ip + "?fields=status,country,regionName,city,lat,lon";

        return restTemplate.getForObject(url, IpApiResponse.class);
    }

    public static class IpApiResponse {

        public String status;
        public String country;
        public String regionName;
        public String city;
        public double lat;
        public double lon;
    }
}
