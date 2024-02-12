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

        if (leadingZeros) {
            builder.append("0");
        }

        return (builder.length() == 0) ? "0" : builder.toString(); // Operador ternario
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
            carry = restarDigitos / 10;
            resultado[maxLength - 1 - i] = restarDigitos % 10;
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

        String suma = Operaciones_Numericas.sumarNumeros(numero1, numero2);
        System.out.println("El resultado de la suma es: " + suma);

        String resta = Operaciones_Numericas.restarNumeros(numero1, numero2);
        System.out.println("El resultado de la resta es: " + resta);

        String multiplicacion = Operaciones_Numericas.multiplicarNumeros(numero1, numero2);
        System.out.println("El resultado de la multiplicacion es: " + multiplicacion);
    }
}