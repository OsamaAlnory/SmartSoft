using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartSoft
{
    public interface Loadable
    {
        void OnFinish(string id);
    }
}