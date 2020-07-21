package models;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    public List<Ad> all();
    // insert a new ad and return the new ad's id
    public Long insert(Ad ad);
}
