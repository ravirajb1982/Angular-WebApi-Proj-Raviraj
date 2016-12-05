using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http.Filters;

namespace PingCoWebAPI.ExceptionHandler
{
    public class ApiExceptionAttribute:ExceptionFilterAttribute
    {
        public override void OnException(HttpActionExecutedContext actionExecutedContext)
        {
            HttpResponseMessage msgRsp = new HttpResponseMessage(HttpStatusCode.NotImplemented);
            msgRsp.ReasonPhrase = actionExecutedContext.Exception.Message;
            actionExecutedContext.Response = msgRsp;
            base.OnException(actionExecutedContext);
        }
    }
}