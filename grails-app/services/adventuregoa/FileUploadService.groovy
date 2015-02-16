package adventuregoa

import com.adventuregoa.Package
import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap


@Transactional
class FileUploadService {

    static String savePath = "images/"


    static uploadFile(def domain,params, String contextPath){
        domain.clearErrors()
        def allowedContentTypes = ['image/jpeg']

        //image variable
        def image = params.image

        //add slash to folder
        def folder = domain.class.simpleName.toString().toLowerCase().concat("/")

        /*validate file*/

        //if empty
        if(image.size == 0){
            return
        }

        //if has content type
        if (!allowedContentTypes.contains(image.contentType)){
            domain.clearErrors()
            domain.errors.rejectValue('image','com.adventuregoa.Package.image.typeMismatch.error')
            return
        }

        String filename = image.getOriginalFilename()


        try {
            //now transfer file
            String relativePath = savePath + folder
            String absolutePath = contextPath + relativePath
            File folderDir = new File(absolutePath)

            if (!folderDir.exists())
               folderDir.mkdirs()


            File imageDir = new File(absolutePath,filename)

            if(imageDir.exists())
                domain.image = "/"+relativePath+filename
            else{
                image.transferTo(imageDir)
                domain.image = "/"+relativePath+filename
                return  true
            }

        } catch (Exception e) {
            e.printStackTrace()

        }

        return false

    }

    static boolean deleteFile(def domain, String contextPath) {

        if(domain.image.isEmpty())
            return false

        def folder = domain.class.simpleName.toString().toLowerCase().concat("/")
        String absolutePath = contextPath + savePath + folder

        try{

            File imageDir = new File(absolutePath, domain.image as String)
            domain.image = null

            if(imageDir.exists())
            {
                imageDir.delete()
                return true
            }
        }catch (Exception e){
            e.printStackTrace()
        }

        return false
    }

    static updateFile(def domain ,params, String contextPath) {
        deleteFile(domain,contextPath)
        return uploadFile(domain,params,contextPath)
    }
}
