using System;
using System.Diagnostics;
using System.Threading;
using System.Windows.Forms;

class Program
{
    [STAThread]
    static void Main()
    {
        Application.EnableVisualStyles();
        Application.SetCompatibleTextRenderingDefault(false);

        ShowDialog(0);
    }

    static void ShowDialog(int level)
    {
        if (level > 3) return;

        using (Form dialog = new Form())
        {
            dialog.Text = "Cuadro de diálogo " + level;
            dialog.Width = 300;
            dialog.Height = 200;
            Label label = new Label();
            label.Text = "Este es un cuadro de diálogo " + level;
            label.AutoSize = true;
            label.Location = new System.Drawing.Point(10, 10);
            dialog.Controls.Add(label);

            dialog.FormClosing += (sender, e) =>
            {
                Thread.Sleep(100); // Pequeño retraso para asegurarse de que el formulario se cierre completamente
                ShowDialog(level + 1);
            };

            Application.Run(dialog);
        }
    }
}