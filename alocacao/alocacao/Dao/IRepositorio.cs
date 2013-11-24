using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace alocacao.Dao
{
    interface IRepositorio<T>
    {
        T GetById(string id);

        List<T> GetAll();

        bool Delete(string id);

        bool Save(T model);
    }
}
