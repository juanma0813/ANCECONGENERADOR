using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using CTX = Conexion_Normanet.ContextoAnce;

namespace Negocio_Normanet
{
    public class Comites
    {
        public CTX.NormanetRestrucEntities CTX_NormaNet = new CTX.NormanetRestrucEntities();

        public List<CTX.C_Comites> GetComite()
        {
            List<CTX.C_Comites> Comites = CTX_NormaNet.uspComites("COMITES",null,null,null).ToList<CTX.C_Comites>();
            return new List<CTX.C_Comites>();
        }

    }
}
