

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'cat.udl.emovix.core.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'cat.udl.emovix.core.UserRole'
grails.plugin.springsecurity.authority.className = 'cat.udl.emovix.core.Role'
grails.plugin.springsecurity.logout.postOnly = false
grails.plugin.springsecurity.securityConfigType = "Annotation"
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	'/':                ['permitAll'],
	'/error':           ['permitAll'],
	'/index':           ['permitAll'],
	'/index.gsp':       ['permitAll'],
	'/shutdown':        ['permitAll'],
	'/assets/**':       ['permitAll'],
	'/**/js/**':        ['permitAll'],
	'/**/css/**':       ['permitAll'],
	'/**/images/**':    ['permitAll'],
	'/**/favicon.ico':  ['permitAll'],
	'/login/**': ['permitAll'],
  '/logout/**': ['permitAll'],
	//'/**': ['IS_AUTHENTICATED_FULLY']
	'/**': ['permitAll']
]
