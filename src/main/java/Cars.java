import java.util.List;

public interface Cars {
    List<Car> all();

    Long insert(Car car);
}