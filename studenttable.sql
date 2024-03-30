SELECT course_id, course_name, course_fees,
       RANK() OVER (ORDER BY course_fees) AS fee_rank
FROM course.course_table
WHERE course_id NOT IN (
    SELECT course_id
    FROM student.student_table
    WHERE student_id = 'your_student_id'
);
