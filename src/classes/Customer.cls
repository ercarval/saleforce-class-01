/**
 * @author ercarval
 */
public class Customer {

    private Account account;

    private CustomerRepository repository;

    public Customer() {
        repository = new CustomerRepository();
    }

    public CustomerRepository getAll() {
        return repository;
    }


}