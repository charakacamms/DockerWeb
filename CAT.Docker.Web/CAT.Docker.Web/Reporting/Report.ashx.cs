using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CAT.Docker.Web.Reporting
{
    /// <summary>
    /// Summary description for Report
    /// </summary>
    public class Report : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            try
            {
                CrystalDecisions.CrystalReports.Engine.ReportDocument doc
                    = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
                doc.Load(HttpContext.Current.Server.MapPath("~/Reporting/sample.rpt"));
                ExportOptions options = new ExportOptions();
                options.ExportFormatType = ExportFormatType.PortableDocFormat;
                string contentType = "application/pdf";
                String fileName = "InterplanReport"; //use for infoXpert upload file name
                                                     //export report 
                doc.ExportToHttpResponse(
                    options,
                    context.Response,
                    false,
                    null
                );
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}