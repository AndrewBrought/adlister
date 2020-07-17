package ads;

public class ADaoFactory {
    private static AAds adsDao;


    public static AAds getAdsDao() {
        if(adsDao == null ) {
            adsDao = new AListAdsDao();
        }
        return adsDao;
    }

}
