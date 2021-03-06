using DataAccess.Contract;
using DataAccess.Repository;
using DataAccess.Utils;
using Entity_Layer;
using System;
using System.Collections.Generic;
using Oracle.ManagedDataAccess.Client;

namespace DataAccess
{
    public class daoMecanico : OracleConexion, IOperacionCrud<MecanicoBO>
    {
        providerStoreProcedures providerStoreProcedure = new providerStoreProcedures();
        public string Actualizar(MecanicoBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameMecanico, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.U.ToString(); 
                        command.Parameters.Add(new OracleParameter("E_NUM_IDENT_MEC", OracleDbType.Varchar2, 20)).Value = dto.NUM_IDENT_MEC;
                        command.Parameters.Add(new OracleParameter("E_TIPO_IDENT_MEC", OracleDbType.Varchar2, 20)).Value = dto.TIPO_IDENT_MEC;
                        command.Parameters.Add(new OracleParameter("E_PRIMER_NOMBRE", OracleDbType.Varchar2, 50)).Value = dto.PRIMER_NOMBRE;
                        command.Parameters.Add(new OracleParameter("E_SEGUNDO_NOMBRE", OracleDbType.Varchar2, 50)).Value = dto.SEGUNDO_NOMBRE;
                        command.Parameters.Add(new OracleParameter("E_PRIMER_APELLIDO", OracleDbType.Varchar2, 50)).Value = dto.PRIMER_APELLIDO;
                        command.Parameters.Add(new OracleParameter("E_SEGUNDO_APELLIDO", OracleDbType.Varchar2, 50)).Value = dto.SEGUNDO_APELLIDO;
                        command.Parameters.Add(new OracleParameter("E_NUMERO_CONTACTO", OracleDbType.Decimal)).Value = dto.NUMERO_CONTACTO;
                        command.Parameters.Add(new OracleParameter("E_DIRECCION", OracleDbType.Varchar2, 100)).Value = dto.DIRECCION;
                        command.Parameters.Add(new OracleParameter("E_CORREO_ELECTRONICO", OracleDbType.Varchar2, 100)).Value = dto.CORREO_ELECTRONICO;
                        command.Parameters.Add(new OracleParameter("E_ESTADO_MECANICO_RESP", OracleDbType.Varchar2, 100)).Value = dto.ESTADO_MECANICO_RESP;


                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;
                        command.ExecuteNonQuery();
                        result = Convert.ToString(command.Parameters["S_V_MSJ_SAL"].Value);
                    }
                    cn.Close();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return result;
        }

        public string Eliminar(string dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameMecanico, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.D;
                        command.Parameters.Add(new OracleParameter("E_NUM_IDENT_MEC", OracleDbType.Varchar2, 20)).Value = dto;
                        command.Parameters.Add(new OracleParameter("E_TIPO_IDENT_MEC", OracleDbType.Varchar2, 20)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_PRIMER_NOMBRE", OracleDbType.Varchar2, 50)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_SEGUNDO_NOMBRE", OracleDbType.Varchar2, 50)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_PRIMER_APELLIDO", OracleDbType.Varchar2, 50)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_SEGUNDO_APELLIDO", OracleDbType.Varchar2, 50)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_NUMERO_CONTACTO", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_DIRECCION", OracleDbType.Varchar2, 100)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_CORREO_ELECTRONICO", OracleDbType.Varchar2, 100)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_ESTADO_MECANICO_RESP", OracleDbType.Varchar2, 100)).Value = null;


                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;
                        command.ExecuteNonQuery();
                        result = Convert.ToString(command.Parameters["S_V_MSJ_SAL"].Value);
                    }
                    cn.Close();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return result;
        }

        public string Insertar(MecanicoBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameMecanico, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.C.ToString();
                        command.Parameters.Add(new OracleParameter("E_NUM_IDENT_MEC", OracleDbType.Varchar2, 20)).Value = dto.NUM_IDENT_MEC;
                        command.Parameters.Add(new OracleParameter("E_TIPO_IDENT_MEC", OracleDbType.Varchar2, 20)).Value = dto.TIPO_IDENT_MEC;
                        command.Parameters.Add(new OracleParameter("E_PRIMER_NOMBRE", OracleDbType.Varchar2, 50)).Value = dto.PRIMER_NOMBRE;
                        command.Parameters.Add(new OracleParameter("E_SEGUNDO_NOMBRE", OracleDbType.Varchar2, 50)).Value = dto.SEGUNDO_NOMBRE;
                        command.Parameters.Add(new OracleParameter("E_PRIMER_APELLIDO", OracleDbType.Varchar2, 50)).Value = dto.PRIMER_APELLIDO;
                        command.Parameters.Add(new OracleParameter("E_SEGUNDO_APELLIDO", OracleDbType.Varchar2, 50)).Value = dto.SEGUNDO_APELLIDO;
                        command.Parameters.Add(new OracleParameter("E_NUMERO_CONTACTO", OracleDbType.Decimal)).Value = dto.NUMERO_CONTACTO;
                        command.Parameters.Add(new OracleParameter("E_DIRECCION", OracleDbType.Varchar2, 100)).Value = dto.DIRECCION;
                        command.Parameters.Add(new OracleParameter("E_CORREO_ELECTRONICO", OracleDbType.Varchar2, 100)).Value = dto.CORREO_ELECTRONICO;
                        command.Parameters.Add(new OracleParameter("E_ESTADO_MECANICO_RESP", OracleDbType.Varchar2, 100)).Value = dto.ESTADO_MECANICO_RESP;

                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;
                        command.ExecuteNonQuery();
                        result = Convert.ToString(command.Parameters["S_V_MSJ_SAL"].Value);
                    }
                    cn.Close();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return result;
        }

        public List<MecanicoBO> Listar()
        {
            List<MecanicoBO> list = new List<MecanicoBO>();
            MecanicoBO dto = null;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameMecanico, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.R;
                        command.Parameters.Add(new OracleParameter("E_NUM_IDENT_MEC", OracleDbType.Varchar2, 20)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_TIPO_IDENT_MEC", OracleDbType.Varchar2, 20)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_PRIMER_NOMBRE", OracleDbType.Varchar2, 50)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_SEGUNDO_NOMBRE", OracleDbType.Varchar2, 50)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_PRIMER_APELLIDO", OracleDbType.Varchar2, 50)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_SEGUNDO_APELLIDO", OracleDbType.Varchar2, 50)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_NUMERO_CONTACTO", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_DIRECCION", OracleDbType.Varchar2, 100)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_CORREO_ELECTRONICO", OracleDbType.Varchar2, 100)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_ESTADO_MECANICO_RESP", OracleDbType.Varchar2, 100)).Value = null;

                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;

                        using (OracleDataReader dr = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection))
                        {
                            while (dr.Read())
                            {
                                dto = new MecanicoBO();
                                dto.NUM_IDENT_MEC = dr["NUM_IDENT_MEC"].ToString();
                                dto.TIPO_IDENT_MEC = Convert.ToString(dr["TIPO_IDENT_MEC"]);
                                dto.PRIMER_NOMBRE = Convert.ToString(dr["PRIMER_NOMBRE"]);
                                dto.SEGUNDO_NOMBRE = Convert.ToString(dr["SEGUNDO_NOMBRE"]);
                                dto.PRIMER_APELLIDO = Convert.ToString(dr["PRIMER_APELLIDO"]);
                                dto.SEGUNDO_APELLIDO = Convert.ToString(dr["SEGUNDO_APELLIDO"]);
                                dto.NUMERO_CONTACTO = Convert.ToInt32(dr["NUMERO_CONTACTO"]);
                                dto.DIRECCION = Convert.ToString(dr["DIRECCION"]);
                                dto.CORREO_ELECTRONICO = Convert.ToString(dr["CORREO_ELECTRONICO"]);
                                dto.ESTADO_MECANICO_RESP = Convert.ToString(dr["ESTADO_MECANICO_RESP"]);
                                list.Add(dto);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                new Exception("Error el metodo Listar " + ex.Message);
            }
            return list;
        }
    }
}
