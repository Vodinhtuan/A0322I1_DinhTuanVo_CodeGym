package casestudy_furamaresort.until;

import casestudy_furamaresort.models.Contract;
import casestudy_furamaresort.models.facility_inheritance.Facility;
import casestudy_furamaresort.models.person_inheritance.Person;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import java.util.TreeSet;

public class WriteFile {
    public static void writeFilePerson(String filePath, List<? extends Person> listPerson){
        try {
            FileWriter fileWriter = new FileWriter(filePath);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            for (int i = 0; i < listPerson.size(); i++){
                bufferedWriter.write(listPerson.get(i).toString());
                bufferedWriter.newLine();
            }
            bufferedWriter.close();
            fileWriter.close();
        } catch (IOException e) {
            System.err.println("ERROR! can't write to file.");
        }
    }

    public static void writeFileFacility(String filePath, List<? extends Facility> listFacility){
        try {
            FileWriter fileWriter = new FileWriter(filePath);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            for (int i = 0; i < listFacility.size(); i++){
                bufferedWriter.write(listFacility.get(i).toString());
                bufferedWriter.newLine();
            }
            bufferedWriter.close();
            fileWriter.close();
        } catch (IOException e) {
            System.err.println("ERROR! can't write to file.");
        }
    }

    public static void writeToContract(String s, TreeSet<Contract> arrayContract) {
    }
}
