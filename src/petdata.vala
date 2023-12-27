namespace Pawfectly {

    public class Petdata {
        public string petname;
        public string whatpet;
        public string breed;
    }

    public class PawfectlyApp : Object {
        public static int main(string[] args) {
            var pets = new Pawfectly.Petdata[5];

            pets[0] = new Pawfectly.Petdata();
            pets[0].petname = "Fluffy";
            pets[0].whatpet = "Dog";
            pets[0].breed = "Golden Retriever";

            pets[1] = new Pawfectly.Petdata();
            pets[1].petname = "Whiskers";
            pets[1].whatpet = "Cat";
            pets[1].breed = "Siamese";

            pets[2] = new Pawfectly.Petdata();
            pets[2].petname = "gusgus";
            pets[2].whatpet = "mice";
            pets[2].breed = "rex";

            pets[3] = new Pawfectly.Petdata();
            pets[3].petname = "Pascal";
            pets[3].whatpet = "Chameleon";
            pets[3].breed = "Veiled";

            pets[4] = new Pawfectly.Petdata();
            pets[4].petname = "dory";
            pets[4].whatpet = "fish";
            pets[4].breed = "blue tang";

            foreach (var pet in pets) {
                stdout.printf("Pet Name: %s\n", pet.petname);
                stdout.printf("What Pet: %s\n", pet.whatpet);
                stdout.printf("Breed: %s\n\n", pet.breed);
            }

            return 0;
        }
    }
}
