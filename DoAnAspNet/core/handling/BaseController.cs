using Dapper;
using DoAnAspNet.core.connect;
using DoAnAspNet.core.Interface;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.handling
{
    public class BaseController<TEntity> : IBase<TEntity>
    {
        protected IDbConnection _dbConnection = GetConnect.GetDBConnection();
        private string _tableName = typeof(TEntity).Name;
        protected string _ma = "";
        public virtual int AddNewEntity(TEntity entity)
        {
            DynamicParameters dynamicParameters = new DynamicParameters();//Tạo biến dynamicParameter map thuộc tính vs giá trị
            var properties = entity.GetType().GetProperties();//Lấy toàn bộ thuộc tính của entity
            foreach (var property in properties)//Duyệt từng thuộc tính vừa lấy được
            {
                var propertyName = property.Name;//Lấy tên thuộc tính
                if (propertyName == _ma)
                {
                    continue; ;
                }

                var propertyValue = property.GetValue(entity);//lấy giá trị thuộc tính truyền vào
                dynamicParameters.Add($"@{propertyName}", propertyValue);//gán giá trị cho biến
            }
            return _dbConnection.Execute($"proc_AddNew{_tableName}", commandType: CommandType.StoredProcedure, param: dynamicParameters);
        }

        public virtual int DelEntity(int id)
        {
            return _dbConnection.Execute($"Delete From {_tableName} Where {_ma}={id}", commandType: CommandType.Text);
        }

        public int EditEntity(TEntity entity)
        {
            var properties = entity.GetType().GetProperties();
            DynamicParameters parameter = new DynamicParameters();
            foreach (var property in properties)
            {
                var propertyName = property.Name;
                var propertyValue = property.GetValue(entity);
                parameter.Add($"@{propertyName}", propertyValue);
            }
            return _dbConnection.Execute($"proc_Edit{_tableName}", parameter, commandType: CommandType.StoredProcedure);
        }

        public IEnumerable GetAllEntity()
        {
            return _dbConnection.Query<TEntity>($"proc_Get{_tableName}s", commandType: CommandType.StoredProcedure);
        }

        public virtual TEntity GetEntityByID(int id)
        {
            return _dbConnection.Query<TEntity>($"Select * From {_tableName} Where {_ma}={id}", commandType: CommandType.Text).FirstOrDefault();
        }
    }
}