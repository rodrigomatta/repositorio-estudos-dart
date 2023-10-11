void main() {
  var matrix = [
    [0,0],[0,1],[0,2],[0,3], 
    [1,0],[1,1],[1,2],[1,3],
    [2,0],[2,1],[2,2],[2,3],
    [3,0],[3,1],[3,2],[3,3] 
  ];

  for (var i = 0; i < matrix.length; i++) {
    if (i  == (matrix.length -1)) {
      break;
    }

    if (isEqual(matrix[i])) {
      print(matrix[i + 1]);
    }
  }
}

bool isEqual (List<int> elemento) {
  return elemento[0] == elemento[1];
}