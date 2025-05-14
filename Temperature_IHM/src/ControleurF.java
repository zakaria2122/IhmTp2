import javafx.event.ActionEvent;
import javafx.event.EventHandler;
public class ControleurF implements EventHandler<ActionEvent> {
    
   private Temperature temperature;
   private AppliConverter appli;
   
   public ControleurF(Temperature temperature, AppliConverter appli){
       this.temperature = temperature;
       this.appli = appli;
   }

   @Override
   public void handle(ActionEvent event) {

                double value = this.appli.getValueFahrenheit();
               this.temperature.setvaleurFahrenheit(value);
               this.appli.majTF();               
     
   }}


