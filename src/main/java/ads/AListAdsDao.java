package ads;
import ads.AAds;
import java.util.ArrayList;
import java.util.List;

public class AListAdsDao implements AAds {
    private List<AAd> ads;

    @Override
    public List<AAd> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    private List<AAd> generateAds() {
        List<AAd> ads = new ArrayList<>();
        ads.add(new AAd(
           1,
           1,
           "Playstation 3 for sale",
           "This is a slightly used PS3"
        ));
        ads.add(new AAd(
                2,
                1,
                "Super Nintendo",
                "Get your game on with this old-school classic!"
        ));
        ads.add(new AAd(
                3,
                2,
                "Junior Java Developer Position",
                "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
        ));
        ads.add(new AAd(
                4,
                2,
                "JavaScript Developer needed",
                "Must have strong Java skills"
        ));
        return ads;
    }
}
