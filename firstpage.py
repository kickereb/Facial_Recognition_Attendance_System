#import module from tkinter for UI
import cv2
from tkinter import *
from playsound import playsound
import os
from datetime import datetime
#creating instance of TK
root=Tk()

root.configure(background="white")

#root.geometry("300x300")

def function2():
    import faces

def function5():    
   os.startfile(os.getcwd()+"/developers/diet1frame1first.html")
   
def function6():
    root.destroy()

def attend():
    os.startfile(os.getcwd()+"/firebase/attendance_files/attendance"+str(datetime.now().date())+'.xls')

def query1():
    import query1

#stting title for the window
root.title("AUTOMATIC ATTENDANCE MANAGEMENT USING FACE RECOGNITION")

#creating a text label
Label(root, text="FACE RECOGNITION ATTENDANCE SYSTEM",font=("times new roman",20),fg="white",bg="maroon",height=2).grid(row=0,rowspan=2,columnspan=2,sticky=N+E+W+S,padx=5,pady=5)

#creating first button
#Button(root,text="Train Dataset",font=("times new roman",20),bg="#0D47A1",fg='white',command=function1).grid(row=3,columnspan=2,sticky=W+E+N+S,padx=5,pady=5)
#creating second button
Button(root,text="Take Attendance",font=("times new roman",20),bg="#0D47A1",fg='white',command=function2).grid(row=4,columnspan=2,sticky=W+E+N+S,padx=5,pady=5)

#creating attendance button
Button(root,text="Attendance Sheet",font=('times new roman',20),bg="#0D47A1",fg="white",command=attend).grid(row=6,columnspan=2,sticky=N+E+W+S,padx=5,pady=5)

Button(root,text="Student Database",font=('times new roman',20),bg="#0D47A1",fg="white",command=function5).grid(row=8,columnspan=2,sticky=N+E+W+S,padx=5,pady=5)

Button(root,text="Queries",font=('times new roman',20),bg="#0D47A1",fg="white",command=query1).grid(row=9,columnspan=2,sticky=N+E+W+S,padx=5,pady=5)

Button(root,text="Exit",font=('times new roman',20),bg="maroon",fg="white",command=function6).grid(row=10,columnspan=2,sticky=N+E+W+S,padx=5,pady=5)

root.mainloop()
