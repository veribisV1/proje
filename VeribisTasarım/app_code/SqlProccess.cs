using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for SqlProccess
/// </summary>
public class SqlProccess
{
    string connectionString;

    public SqlProccess(string connectionString)
    {
        this.connectionString = connectionString;
    }

    public SqlProccess()
    {
        connectionString = ConfigurationManager.ConnectionStrings["veribis"].ConnectionString;
    }

    public int ExecuteNonQuery(string sqlString, CommandType type, SqlParameter[] paramArray)
    {
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(sqlString, con);

        cmd.CommandType = type;

        if (paramArray != null)
        {
            cmd.Parameters.AddRange(paramArray);
        }

        try
        {
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            return cmd.ExecuteNonQuery();
        }

        catch (SqlException ex)
        {
            throw ex;
        }

        finally
        {
            if (con.State != ConnectionState.Closed)
            {
                con.Close();
            }
        }
    }

    public object ExecuteScalar(string sqlString, CommandType type, SqlParameter[] paramArray)
    {

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(sqlString, con);

        cmd.CommandType = type;

        if (paramArray != null)
        {
            cmd.Parameters.AddRange(paramArray);
        }

        try
        {
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            return cmd.ExecuteScalar();
        }

        catch (SqlException ex)
        {
            throw ex;
        }

        finally
        {
            if (con.State != ConnectionState.Closed)
            {
                con.Close();
            }
        }
    }

    public SqlDataReader ExecuteReader(string sqlString, CommandType type, SqlParameter[] paramArray)
    {
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(sqlString, con);

        cmd.CommandType = type;

        if (paramArray != null)
        {
            cmd.Parameters.AddRange(paramArray);
        }

        try
        {
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }

            return cmd.ExecuteReader((CommandBehavior.CloseConnection));
        }
        catch (SqlException exp)
        {
            return null;
        }
        finally
        {
            if (con.State != ConnectionState.Closed)
            {
                con.Close();
            }
        }


    }
}