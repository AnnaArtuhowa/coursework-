#import "../utils.typ": unindented, institution, city_and_year
#import "course-work.typ": *

#let project(
  start_label: <start>,
  student_name: none,
  student_name_genitive: none,
  group: none,
  course_num: none,
  city: "Кам’янське",
  department_name: "технолого-економічне",
  commission_name: "Програмного забезпечення та прикладної математики",
  commission_name_short: "ПЗ та ПМ",
  knowledge_branch: "12 Інформаційні технології",
  specialty: "121 “Інженерія програмного забезпечення”",
  discipline: none,
  title: none,
  work_due_to: none,
  task_received_at: none,
  supervisor_name: none,
  supervisor_title: none,
  commission_head_name: none,
  commission_members: none,
  calendar_plan_data: (),
  initial_data: (),
  body
) = {

  // Title Page
  page(numbering: none)[
    #unindented[
      #institution()
        #cycle_commission(commission_name: commission_name)
        #work_title(
          discipline: discipline,
          title: title,
          course_num: course_num,
          group: group,
          knowledge_branch: knowledge_branch,
          specialty: specialty,
          student_name: student_name,
          supervisor_name: supervisor_name,
          supervisor_title: supervisor_title,
          commission_members: commission_members
        )
        #city_and_year(city: city)
    ]
  ]

  // Task Page
  page(numbering: none)[
    #unindented[
      #institution()
      #task_header(
        department_name: department_name,
        commission_name: commission_name,
        commission_short: commission_name_short,
        knowledge_branch: knowledge_branch,
        specialty: specialty,
        commission_head_name: commission_head_name,
      )
      #task_body(
        to_whom: student_name_genitive,
        group: group,
        work_name: title,
        work_due_to: work_due_to,
        initial_data: initial_data
      )
    ]
  ]

  page(numbering: none)[
    #unindented[
      #task_calendar_plan(plan: calendar_plan_data)
      #task_signature(task_received_at: task_received_at)
    ]
  ]

  // Grade Page
  page(numbering: none)[
    #unindented[
      #institution()
      #grade_header(
        student_name: student_name,
        group: group,
      )
      #grade_title(title: title)
      #grades(
        supervisor_name: supervisor_name,
        performance_supervisor_name: commission_head_name
      )
    ]
  ]
  page(numbering: none)[
    #heading(outlined: false, numbering: none)[РЕФЕРАТ]
Пояснювальна записка до курсової роботи: 27 с., 2 рис., 2 додатки,
4 джерел інформації.\
Об’єкт розробки — патерн проектування Iterator\
Мета розробки — створення програми з демонстрацією роботи патерну
проектування Iterator.\
Метод проектування — мова програмування Phyton, Visual studio, операційна
система Windows.\
В процесі розробки курсової роботи було створено програмний додаток, який дозволяє ознайомитися з принципом роботи патерну проектування Iterator.\
Перша частина містить знайомство з основними концепціями патернів проектування та їхньою роллю в розробці програмного забезпечення, а також дослідження історії створення та еволюції патерну Iterator та аналіз проблем, які він вирішує.\
У другій частині описуються компоненти патерну Iterator, зокрема детальний аналіз класів, інтерфейсів та методів, що беруть участь у його реалізації.\
Третя частина присвячена застосуванню патерну Iterator, його перевагам і недолікам, а також взаємозв'язкам з іншими патернами.\
\
\
PHYTON, WINDOWS, ПАТЕРН ПРОЕКТУВАННЯ, VISUAL STUDIO CODE, ITERATOR
    
  ]
  page(numbering: none)[
    #outline(indent: 1.25em)
  ]
  
  body
}
