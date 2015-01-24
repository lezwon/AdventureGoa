package adventuregoa
import grails.transaction.Transactional
import org.springframework.validation.FieldError


@Transactional
class FileUploadService {

    static String savePath = "images/"


    static uploadFile(def domain,params, String contextPath){

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
//            domain.image = "Invalid"
//            domain.errors.rejectValue('image','com.adventuregoa.package.image.invalidfile')
            return
        }

        String filename = image.getOriginalFilename()


        try {
            //now transfer file
            String relativePath = savePath + folder
            String absolutePath = contextPath + relativePath
            File folderDir = new File(absolutePath)

            if (!folderDir.exists())
                folderDir.canWrite() ? folderDir.mkdirs(): null


            File imageDir = new File(absolutePath,filename)

            if(imageDir.exists())
                domain.image = filename
            else{
                image.transferTo(imageDir)
                domain.image = filename
            }

        } catch (Exception e) {
            e.printStackTrace()
//            domain.image = "Invalid"
//            domain.errors.rejectValue('image','com.adventuregoa.package.image.failed')
        }

    }
}
