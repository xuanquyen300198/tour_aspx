using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
namespace DoAnAspNet.core.Interface
{
    public interface IBase<TEntity>
    {

        /// <summary>
        /// Lấy tất cả dữ liệu trong bảng TEntity
        /// </summary>
        /// <returns>thông tin tất cả entity</returns>
        /// CreatedBy:naTu(20/2/2021)
        IEnumerable GetAllEntity();

        /// <summary>
        /// Lấy 1 dòng trong bảng dữ liệu qua ID
        /// </summary>
        /// <param name="id">id</param>
        /// <returns>thông tin 1 entity</returns>
        /// CreatedBy:naTu(20/2/2021)
        TEntity GetEntityByID(int id);

        /// <summary>
        /// Xóa dữ liệu khỏi csdl qua id
        /// </summary>
        /// <param name="id">id</param>
        /// <returns>số dòng xóa được</returns>
        /// CreatedBy:naTu(20/2/2021)
        int DelEntity(int id);

        /// <summary>
        /// Thêm mới dữ liệu vào csdl
        /// </summary>
        /// <param name="entity">thông tin entity</param>
        /// <returns>số dòng thêm được</returns>
        /// CreatedBy:naTu(20/2/2021)
        int AddNewEntity(TEntity entity);

        /// <summary>
        /// Chỉnh sửa thông tin 1 entity
        /// </summary>
        /// <param name="entity">thông tin mới của entity</param>
        /// <returns>số dòng sửa được</returns>
        /// CreatedBy:naTu(20/2/2021)
        int EditEntity(TEntity entity);
    }
}
