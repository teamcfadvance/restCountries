<cfset wrapper = new RestCountries()>

<h2>Search for 'United States' as the country name</h2>
<cfdump var=#wrapper.searchByName('united states')#>

<h2>Search for 'de' as the country code</h2>
<cfdump var=#wrapper.searchByCountryCode('de')#>

<h2>Search for 'brussels' as the country capital</h2>
<cfdump var=#wrapper.searchByCountryCapital('brussels')#>

<h2>Search for '39' as the country calling code</h2>
<cfdump var=#wrapper.searchByCallingCode(39)#>

<h2>Search for 'eur' as the currency name</h2>
<cfdump var=#wrapper.searchByCurrency('eur')#>

<h2>Search for 'Asia' as the region name</h2>
<cfdump var=#wrapper.searchByRegion('Asia')#>

<h2>Search for 'Western Asia' as the subregion name</h2>
<cfdump var=#wrapper.searchBySubRegion('Western Asia')#>

<h2>List All Countries</h2>
<cfdump var=#wrapper.listCountries()#>