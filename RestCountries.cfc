<cfcomponent displayname="Rest Countries Facade" output="false">
	<cfset Variables.baseURI 	= "http://restcountries.eu/rest/">
	<!--- 
		Get your API Key from https://www.mashape.com/ and enter it here
	--->
	<cfset Variables.mashapeKey = "">

	<cffunction name="init" access="public" output="false" hint="Component constructor">
		<cfreturn this>
	</cffunction>

	<cffunction name="listCountries" access="public" output="false" hint="Return information for all available countries">
		<cfreturn makeHTTPCall()>
	</cffunction>

	<cffunction name="searchByName" access="public" returntype="any" output="false" hint="Searches countries for the specified country name">
		<cfargument name="countryName" required="true" type="string">
		<cfreturn makeHTTPCall('name/#arguments.countryName#')>
	</cffunction>

	<cffunction name="searchByRegion" access="public" returntype="any" output="false" hint="Searches countries for the specified region name">
		<cfargument name="regionName" required="true" type="string">
		<cfreturn makeHTTPCall('region/#arguments.regionName#')>
	</cffunction>

	<cffunction name="searchBySubRegion" access="public" returntype="any" output="false" hint="Searches countries for the specified subregion name">
		<cfargument name="subRegionName" required="true" type="string">
		<cfreturn makeHTTPCall('subregion/#arguments.subRegionName#')>
	</cffunction>

	<cffunction name="searchByCallingCode" access="public" returntype="any" output="false" hint="Searches countries for the specified calling code">
		<cfargument name="callingCode" required="true" type="numeric">
		<cfreturn makeHTTPCall('callingcode/#arguments.callingcode#')>
	</cffunction>

	<cffunction name="searchByCurrency" access="public" returntype="any" output="false" hint="Searches countries for the specified currency name">
		<cfargument name="currency" required="true" type="string">
		<cfreturn makeHTTPCall('currency/#arguments.currency#')>
	</cffunction>

	<cffunction name="searchByCountryCode" access="public" returntype="any" output="false" hint="Searches countries for the specified country code">
		<cfargument name="countryCode" required="true" type="string">
		<cfreturn makeHTTPCall('alpha/#arguments.countryCode#')>
	</cffunction>

	<cffunction name="searchByCountryCapital" access="public" returntype="any" output="false" hint="Searches countries for the specified country capital">
		<cfargument name="capital" required="true" type="string">
		<cfreturn makeHTTPCall('capital/#arguments.capital#')>
	</cffunction>

	<cffunction name="makeHTTPCall" access="private" returntype="any" output="false" hint="Makes all API calls for the facade">
		<cfargument name="urlStub" type="string" default="">

		<cfhttp url="#Variables.baseURI##arguments.urlStub#" method="get">

		<cfreturn cfhttp.fileContent>
	</cffunction>

</cfcomponent>