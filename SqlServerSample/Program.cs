using System;
using System.Data.SqlClient;

namespace SqlServerSample
{
    class Program
    {
        static void Main(string[] args)
        {

            try
            {
                // Build connection string
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = "localhost";
                builder.InitialCatalog = "study1";
                builder.IntegratedSecurity = true;

                string tableName = "Sample1";
                string idCol = "id";
                string dateCol = "date";
                string startDate = "2022-02-17 00:00:00";
                string endDate = "2022-02-19 00:00:00";

                string sqlTmpl = "SELECT * FROM {0} WHERE {1} BETWEEN '{2}' AND '{3}'";
                string sql = string.Format(sqlTmpl, tableName, dateCol, startDate, endDate);

                // Connect to SQL
                Console.Write("Connecting to SQL Server ... ");
                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();
                    Console.WriteLine("Done.");

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader dataReader = command.ExecuteReader())
                        {
                            while (dataReader.Read())
                            {
                                string id = dataReader[idCol].ToString();
                                string date = dataReader[dateCol].ToString();
                                Console.WriteLine(id + ", " + date);
                            }
                        }
                    }
                }
            }
            catch (SqlException e)
            {
                Console.WriteLine(e.ToString());
            }

            Console.WriteLine("All done. Press any key to finish...");
            Console.ReadKey(true);
        }
    }
}
