##
var s: integer := ReadInteger('Кол-во секунд, прошедших с полуночи:');
var hours: integer := s div 3600;
var minutes: integer := (s - (hours * 3600)) div 60;
var seconds: integer := s - (hours * 3600 + minutes * 60);
Write(hours, ':', minutes, ':', seconds);