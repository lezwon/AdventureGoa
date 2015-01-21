package adventuregoa

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.commons.CommonsMultipartFile

@Transactional
class FileUploadService {


    static String uploadFile(def image, String contextPath, savePath = "images/"){
        //validate file


        try {
            //now transfer file
            String imagePath = savePath + image.getOriginalFilename().toString()
            String absolutePath = contextPath + imagePath
            File fileDest = new File(absolutePath)

//            if (!fileDest.exists())
//                fileDest.mkdirs();

            image.transferTo(fileDest)
            return "/"+imagePath

        } catch (Exception e) {
            e.printStackTrace()
            return  false
        }

    }
}
