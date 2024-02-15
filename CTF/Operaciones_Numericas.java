package CTF;

import java.util.Scanner;

public class Operaciones_Numericas {

    private static String convertirArregloString(int[] arreglo) {
        StringBuilder builder = new StringBuilder();
        boolean leadingZeros = true;

        for (int digito : arreglo) {
            if (leadingZeros && digito == 0) {
                continue;
            }
            leadingZeros = false;
            builder.append(digito);
        }

        return (builder.length() == 0) ? "0" : builder.toString();
    }

    private static String dividirNumeros(String numero1, String numero2) {
        if (numero2.equals("0")) {
            return "Error: División por cero";
        }

        if (numero1.equals("0")) {
            return "0";
        }

        StringBuilder cociente = new StringBuilder();
        StringBuilder dividendo = new StringBuilder(numero1);

        int divisor = Integer.parseInt(numero2);
        int index = 0;
        int residuo = 0;

        while (index < numero1.length()) {
            int parteEntera = Integer.parseInt(dividendo.substring(index, index + 1));
            int resultadoDivision = (residuo * 10 + parteEntera) / divisor;

            cociente.append(resultadoDivision);
            residuo = (residuo * 10 + parteEntera) % divisor;

            index++;
        }

        return cociente.toString();
    }

    private static String calcularResiduo(String numero1, String numero2) {
        if (numero2.equals("0")) {
            return "Error: División por cero.";
        }
    
        StringBuilder dividendo = new StringBuilder(numero1);
        int divisor = Integer.parseInt(numero2);
    
        int index = 0;
        while (index < numero1.length() && Integer.parseInt(dividendo.toString()) >= divisor) {
            int parteEntera = Integer.parseInt(dividendo.substring(index, index + 1));
            int residuo = parteEntera % divisor;
    
            if (index + 1 < numero1.length()) {
                int siguienteDigito = Integer.parseInt(dividendo.substring(index + 1, index + 2));
    
                residuo = residuo * 10 + siguienteDigito;
                dividendo.replace(index + 1, index + 2, String.valueOf(residuo));
            }
    
            index++;
        }
    
        return String.valueOf(Integer.parseInt(dividendo.toString()) % divisor);
    }

    private static String multiplicarNumeros(String numero1, String numero2) {
        int maxLength = numero1.length() + numero2.length();
        int[] resultado = new int[maxLength];

        for (int i = 0; i < numero1.length(); i++) {
            int digito1 = Character.getNumericValue(numero1.charAt(numero1.length() - 1 - i));
            int carry = 0;

            for (int j = 0; j < numero2.length(); j++) {
                int digito2 = Character.getNumericValue(numero2.charAt(numero2.length() - 1 - j));
                int producto = digito1 * digito2 + resultado[maxLength - 1 - i - j] + carry;

                carry = producto / 10;
                resultado[maxLength - 1 - i - j] = producto % 10;
            }

            resultado[maxLength - 1 - i - numero2.length()] += carry;
        }

        return convertirArregloString(resultado);
    }

    private static String restarNumeros(String numero1, String numero2) {
        int maxLength = Math.max(numero1.length(), numero2.length());
        int[] resultado = new int[maxLength];
        int carry = 0;

        for (int i = 0; i < maxLength; i++) {
            int digito1 = (i < numero1.length()) ? Character.getNumericValue(numero1.charAt(numero1.length() - 1 - i)) : 0;
            int digito2 = (i < numero2.length()) ? Character.getNumericValue(numero2.charAt(numero2.length() - 1 - i)) : 0;

            int restarDigitos = digito1 - digito2 - carry;
            
            if (restarDigitos < 0) {
                restarDigitos += 10;
                carry = 1;
            } else {
                carry = 0;
            }

            resultado[maxLength - 1 - i] = restarDigitos;
        }

        return convertirArregloString(resultado);
    }

    private static String sumarNumeros(String numero1, String numero2) {
        int maxLength = Math.max(numero1.length(), numero2.length() + 1);
        int[] resultado = new int[maxLength];
        int carry = 0;

        for (int i = 0; i < maxLength; i++) {
            int digito1 = (i < numero1.length()) ? Character.getNumericValue(numero1.charAt(numero1.length() - 1 - i)) : 0;
            int digito2 = (i < numero2.length()) ? Character.getNumericValue(numero2.charAt(numero2.length() - 1 - i)) : 0;

            int sumaDigitos = digito1 + digito2 + carry;
            carry = sumaDigitos / 10;
            resultado[maxLength - 1 - i] = sumaDigitos % 10;
        }

        return convertirArregloString(resultado);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Ingrese el primer numero:");
        String numero1 = scanner.nextLine();

        System.out.println("Ingrese el segundo numero:");
        String numero2 = scanner.nextLine();

        String suma = sumarNumeros(numero1, numero2);
        System.out.println("El resultado de la suma es: " + suma);

        String resta = restarNumeros(numero1, numero2);
        System.out.println("El resultado de la resta es: " + resta);

        String multiplicacion = multiplicarNumeros(numero1, numero2);
        System.out.println("El resultado de la multiplicacion es: " + multiplicacion);

        String division = dividirNumeros(numero1, numero2);
        System.out.println("El resultado de la division es: " + division);

        String residuo = calcularResiduo(numero1, numero2);
        System.out.println("El residuo de la division es: " + residuo);
    }
}