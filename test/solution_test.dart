import 'package:test/test.dart';
import 'package:zadanie/solution.dart';

void main() {
  test('no number', () {
    final counter = Solution();

    counter.selectNumber('2,2,2');

    expect(counter.chosenNumber, 'brak');

    
  });
  test('zero', () {
    final counter = Solution();

    counter.selectNumber('1,3,5,9,11,13,15,0,-3');

    expect(counter.chosenNumber, '0');
    

    
  });
  test('even', () {
    final counter = Solution();

    counter.selectNumber('-1,3,4');

    expect(counter.chosenNumber, '4');


    
  });
  test('even negative', () {
    final counter = Solution();

    counter.selectNumber('-1,3,-4');

    expect(counter.chosenNumber, '-4');


    
  });
  test('odd', () {
    final counter = Solution();

    counter.selectNumber('-2,4,1');

    expect(counter.chosenNumber, '1');


    
  });
  test('odd negative', () {
    final counter = Solution();

    counter.selectNumber('-2,4,-1');

    expect(counter.chosenNumber, '-1');


    
  });

  
  
}