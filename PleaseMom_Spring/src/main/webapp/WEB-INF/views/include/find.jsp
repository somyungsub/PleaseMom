<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	form .search-form{
		width: 90%;
		padding: 10px;
		background-color: #DCD4D4;
		border-radius: 5px;
	}
	form .search-form div{
		padding-left:2px;
		padding-right:2px;
	}
	@media (min-width: 992px) {
		form .search-form {
		    height: 140px;
		}
	}
	@media (min-width: 768px) {
		form .search-form {
		    height: 70px;
		}
	}
	
	.ui-autocomplete {
	    background: #FBF9D5;
	    font-size: 1em;
	    font-family: "Lato";
	    font-color: #B9B9B9;
	    border-radius: 0px;
	}
	.ui-autocomplete .a-name {
		margin-right: 1em;
		color: #606060;
	}
	.ui-autocomplete .a-country {
		float: right;
		color: #606060;
	}
	.ui-autocomplete .a-city {
		display: block;
		font-size: smaller;
		color: #969696; 
	}
	.ui-autocomplete .c-country {
		margin-right: 2em;
		color: #606060;
	}
	.ui-autocomplete .c-location {
		display: block;
		font-size: smaller;
		color: #969696; 
	}
</style>
 <div class="container">
        <div class="row">
            <div class="col-lg-12" align="center">
             	<form name="myForm" method="get" action="BoardListServlet">
    	            <div class="search-form">
                		<div class="SearchForm_location col-md-3 col-xs-6" >
	                		<input class="form-control input-lg airportSearch" type="text" placeholder="출발 공항" name="scb_from" value="${ map.scb_from }">
                    	</div>
                    	<div class="SearchForm_location col-md-3 col-xs-6">
    	            		<input class="form-control input-lg countrySearch" type="text" placeholder="도착 국가" name="scb_to" value="${ map.scb_to }">
        	            </div>
        	            <div class="SearchForm_date col-md-2 col-xs-4">
            	        	<input class="form-control input-lg datepicker" type="text" placeholder="출발일 from" name="min" value="${ map.min }">
            	        </div>
            	        <div class="SearchForm_date col-md-2 col-xs-4">
                	    	<input class="form-control input-lg datepicker-to" type="text" placeholder="출발일 to" name="max" value="${ map.max }">
                	    </div>
                	    <div class="submit-form col-md-2 col-xs-4">
                    		<input class="form-control input-lg" type="button" value="검색" onclick="boardList(myForm)">
                    	</div>
	                </div>
                </form>
            </div>
        </div>
    </div>