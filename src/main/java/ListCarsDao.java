import java.util.ArrayList;
import java.util.List;

public class ListCarsDao implements Cars {
    private List<Car> cars;

    @Override
    public List<Car> all() {
       if (cars == null){
           cars = generateCars();
       }
       return cars;
    }

    public Long insert(Car car) {
        if (cars == null) {
            cars = generateCars();
        }
        car.setId((long) cars.size());
        cars.add(car);
        return car.getId();
    }

    private List<Car> generateCars() {
        List<Car> cars = new ArrayList<>();
        cars.add(new Car(
                1,
                "Dodge",
                "Dart",
                "1976"
        ));
        cars.add(new Car(
                2,
                "Shelby",
                "Cobra",
                "1965"
        ));
        cars.add(new Car(
                3,
                "Porsche",
                "911",
                "1988"
        ));
        cars.add(new Car(
                4,
                "Ford",
                "F-150 Larriat",
                "2020"
        ));
        return cars;
    }



}



