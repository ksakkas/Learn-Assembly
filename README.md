
<html>
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:600);

body { 
  font-family: 'Open Sans', 'sans-serif';
  color: black;
  <!--overflow: hidden;-->
}

.item-1, 
.item-2, 
.item-3 {
	position: absolute;
  display: block;
	top: 2em;
  
  width: 60%;
  
  font-size: 2em;

	animation-duration: 20s;
	animation-timing-function: ease-in-out;
	animation-iteration-count: infinite;
}

.item-1{
	animation-name: anim-1;
}

.item-2{
	animation-name: anim-2;
}

.item-3{
	animation-name: anim-3;
}

@keyframes anim-1 {
	0%, 8.3% { left: -100%; opacity: 0; }
  8.3%,25% { left: 25%; opacity: 1; }
  33.33%, 100% { left: 110%; opacity: 0; }
}

@keyframes anim-2 {
	0%, 33.33% { left: -100%; opacity: 0; }
  41.63%, 58.29% { left: 25%; opacity: 1; }
  66.66%, 100% { left: 110%; opacity: 0; }
}

@keyframes anim-3 {
	0%, 66.66% { left: -100%; opacity: 0; }
  74.96%, 91.62% { left: 25%; opacity: 1; }
  100% { left: 110%; opacity: 0; }
}
</style>
<body>

<p class="item-1">
Η Σελίδα βρίσκεται υπό κατασκευή...</p>

<p class="item-2">
Η Σελίδα βρίσκεται υπό κατασκευή...</p>
<br><br><br><br>
</body>
</html>
