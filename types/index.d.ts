import { Category } from './Category'
import { Course } from './Course'
import { CourseCategory } from './CourseCategory'
import { CourseItem } from './CourseItem'
import { Testimonial } from './Testimonial'
  
  interface EntityTypes  {
    Category:Category
    Course:Course
    CourseCategory:CourseCategory
    CourseItem:CourseItem
    Testimonial:Testimonial
  }
  
  export { EntityTypes ,Category,Course,CourseCategory,CourseItem,Testimonial }