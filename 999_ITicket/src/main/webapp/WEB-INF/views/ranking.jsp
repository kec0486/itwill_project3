<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
.rank1 ul li {list-style-type: none;}
.rank2 ul li {list-style-type: none;}
.rank3 ul li {list-style-type: none;}
.rank4 ul li {list-style-type: none;}
.rank5 ul li {list-style-type: none;}


.ranking1{
  		 display: flex;
  		
        }
.menu1{
	    border :1px solid blue;
	    background-color: darksalmon;
		float :left;
	    width:30%;


        }
.rank1 { 
	    border: 1px solid red;
		box-sizing: border-box;
		width:70%;
		}


.ranking2{
   		display: flex;
        }
.menu2{
	    border :1px solid blue;
	    float :left;
	    width:30%;
	        }
.rank2 { 
	    border: 1px solid green;
		box-sizing: border-box;
		width:70%;
		}



.ranking3{
   		display: flex;
        }
.menu3{
	    border :1px solid red;
	    float :left;
	    width:30%;
        }
.rank3 { 
	    border: 1px solid green;
		box-sizing: border-box;
		width:70%;
		}


.ranking4{
   		display: flex;
        }
.menu4{
	    border :1px solid red;
	    float :left;
	    width:30%;
        }
.rank4{
    border: 1px solid blue;
    box-sizing: border-box;
    width:70%;
	}


.ranking5{
   		display: flex;
        }
.menu5{
	    border :1px solid blue;
	    float :left;
	    width:30%;
        }
.rank5{
    border: 1px solid blue;
    width:70%;
    box-sizing: border-box;
	}
</style>


<head>
<meta charset="UTF-8">
<title>랭킹입니다.</title>
</head>




<body>
	<h1>랭킹입니다</h1>

<div class ="rankingTitle">
		<div class ="rankDaily">
		
			<div class="ranking1">
				<div class ="menu1">
				 	<h3>뮤지컬</h3>
					<ul>
					<li>전체</li>
					<li>창작</li>
					<li>라이선스/내한</li>
					</ul>
				</div>	
				<div class= "rank1">
					<ul>
						<li>1-1</li>
						<li>1-2</li>
						<li>1-3</li>
						<li>1-4</li>
						<li>1-5</li>
					</ul>
				</div>
			</div>
			<div class="ranking2">
				<div class ="menu2">
					<h3>콘서트</h3>
					<ul>
					<li>전체</li>
					<li>국내</li>
					<li>내한</li>
					<li>인디/토크</li>
					</ul>
				</div>
				<div class= "rank2">
					<ul>
						<li>2-1</li>
						<li>2-2</li>
						<li>2-3</li>
						<li>2-4</li>
						<li>2-5</li>
					</ul>
				</div>
			</div>
			
			<div class="ranking3">					
				<div class ="menu3">
					<h3>연극</h3>
					<ul>
					<li>전체</li>
					<li>리미티드런</li>
					<li>스테디셀러</li>
					</ul>
				</div>
				<div class= "rank3">
					<ul>
						<li>3-1</li>
						<li>3-2</li>
						<li>3-3</li>
						<li>3-4</li>
						<li>3-5</li>
					</ul>
				</div>
			</div>
					
			<div class="ranking4">					
				<div class ="menu4">
					<h3>클래식</h3>
					<ul>
						<li>전체</li>
						<li>클레식/오페라</li>
						<li>국악</li>
						<li>무용</li>
					</ul>
				</div>
				<div class= "rank4">
					<ul>
						<li>4-1</li>
						<li>4-2</li>
						<li>4-3</li>
						<li>4-4</li>
						<li>4-5</li>
					</ul>
				</div>
			</div>	
			
			<div class="ranking5">					
				<div class ="menu5">
					<h3>전시/행사</h3>
					<ul>
						<li>전체</li>
						<li>전시</li>
						<li>행사</li>
					</ul>
				</div>	
				<div class= "rank5">
					<ul>
						<li>5-1</li>
						<li>5-2</li>
						<li>5-3</li>
						<li>5-4</li>
						<li>5-5</li>
					</ul>
				</div>
	  		</div>
		</div>
</div>


</body>
</html>