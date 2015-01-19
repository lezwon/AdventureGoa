package adventuregoa

import grails.transaction.Transactional
import org.codehaus.groovy.grails.commons.DefaultGrailsDomainClass

import java.security.DomainCombiner

@Transactional
class DomainClassPropertiesService {

    def static getStructure(Class c) {
        def d = new DefaultGrailsDomainClass(c)
        return d.persistentProperties.reverse() as Object[]
    }
}
