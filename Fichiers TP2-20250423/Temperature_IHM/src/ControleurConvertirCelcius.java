
import javafx.event.ActionEvent;
 import javafx.event.EventHandler;

public class ControleurConvertirCelcius implements EventHandler<ActionEvent> {
   


    private Temperature temperature;
    private AppliConverter appli;
    
    public ControleurConvertirCelcius(Temperature temperature, AppliConverter appli){
        this.temperature = temperature;
        this.appli = appli;
    }

    @Override
    public void handle(ActionEvent event) {

                 double value = this.appli.getValueCelcius();
                this.temperature.setvaleurCelcius(value);
                this.appli.majTF();               
      
    }}

