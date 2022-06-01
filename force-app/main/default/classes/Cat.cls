public class Cat {
    public string name;
    public string color;
    public integer age;
    public Cat() {
        system.debug('constructor called.');
    }
    public Cat(string n, string c,integer a){
        this.name = n;
        this.color = c;
        this.age = a;
        sleeping();
    }
    public void sleeping(){
        system.debug(name + 'is sleeping');
    }
}
