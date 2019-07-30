using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;

namespace Hashing
{
    public class Security
    {
       // public static string GetHash512(string password)
        public static string GetHash512(string password, string salt)
        {
           // byte[] passwordByte = ASCIIEncoding.ASCII.GetBytes(password);
            byte[] passwordByte = ASCIIEncoding.ASCII.GetBytes(password + salt + "SM");

            //HashAlgorithm algorithm = new HMACSHA512();
            HashAlgorithm algorithm = HMACSHA512.Create();
            Byte[] hashPassword = algorithm.ComputeHash(passwordByte);
            return Convert.ToBase64String(hashPassword);

        }
        public static string GetHash256(string password , string salt)
        {
            byte[] passwordByte = ASCIIEncoding.ASCII.GetBytes(password + salt + "SM");

           // HashAlgorithm algorithm = new HMACSHA256();
            HashAlgorithm algorithm = HMACSHA256.Create();
            Byte[] hashPassword = algorithm.ComputeHash(passwordByte);
            return Convert.ToBase64String(hashPassword);

        }
    }
}