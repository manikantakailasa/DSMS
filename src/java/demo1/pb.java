package demo1;
import javax.swing.*;
import java.awt.event.*;
import java.awt.*;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.data.general.*;
import org.jfree.data.category.*;

public class pb extends JApplet implements ActionListener
{
    JButton b1,b2;
    JTextField t1,t2,t3,t4;
    JLabel l1,l2,l3,l4;
    JPanel p1,p2;
    public void init()
    {
        setLayout(new BorderLayout());
        setBounds(250,250,300,200);
        p1=new JPanel();
        p2=new JPanel();
        b1=new JButton("pie chart");
        b2=new JButton("bar graph");
        l1=new JLabel("pressure");
        l2=new JLabel("temperature");
        l3=new JLabel("volume");
        l4=new JLabel("rotationspeed");
        t1=new JTextField(100);
        t2=new JTextField(100);
        t3=new JTextField(100);
        t4=new JTextField(100);
        b1.addActionListener(this);
        b2.addActionListener(this);
        p1.setLayout(new GridLayout(4,2,5,5));
        p1.add(l1);p1.add(t1);
        p1.add(l2);p1.add(t2);
        p1.add(l3);p1.add(t3);
        p1.add(l4);p1.add(t4);
        add(p1,BorderLayout.CENTER);
        p2.add(b1);
        p2.add(b2);
        add(p2,BorderLayout.SOUTH);
        setVisible(true);
    }    
    
    public void actionPerformed(ActionEvent e)
    {
     JButton b3=(JButton) e.getSource();
     if(b3==b1)
     {  
         try
         {    
         int p=Integer.parseInt(t1.getText());
         int t=Integer.parseInt(t2.getText());
         int v=Integer.parseInt(t3.getText());
         int r=Integer.parseInt(t4.getText());
         DefaultPieDataset PieDataset = new DefaultPieDataset();
         PieDataset.setValue("pressure",p);  
         PieDataset.setValue("temp",t);
         PieDataset.setValue("volume",v);
         PieDataset.setValue("rota",r);
         JFreeChart chart= ChartFactory.createPieChart3D("Business Process Mapping",PieDataset,true,true,true);
         PiePlot3D P=(PiePlot3D)chart.getPlot();
         ChartFrame frame=new ChartFrame("Pie Chart", chart);
         frame.setVisible(true);
         frame.setSize(450,500);    
         }
         catch(Exception ee)
         {JOptionPane.showMessageDialog(this,"enter proper values");}    
     }
     else if(b3==b2)
     {
     }    
         
        
    }
/*
<applet code='pb.class' width=300 height=200>
</applet>    
*/
} 
