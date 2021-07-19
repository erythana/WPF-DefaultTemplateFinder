using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Xml;

namespace DefaultTemplateFinder
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        public ObservableCollection<Type> WindowsControlsCollection { get; private set; }
        
        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
            WindowsControlsCollection = new ObservableCollection<Type>(GetTypes());
        }

        private static IEnumerable<Type> GetTypes()
        {
            return Assembly.GetAssembly(typeof(Control))?.GetTypes()
                .Where(t => t.IsPublic && !t.IsAbstract && typeof(Control).IsAssignableFrom(t)).OrderBy(t => t.Name);
        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            textEditor.Text = "";
            if (e.AddedItems[0] is not Type selectedType) return;

            if (Application.Current.TryFindResource(selectedType) is { } defaultTemplate)
            {
                var memoryStream = new MemoryStream();
                using var writer = new XmlTextWriter(memoryStream, Encoding.UTF8) 
                    {Formatting = Formatting.Indented};
                XamlWriter.Save(defaultTemplate, writer); ;
                textEditor.Text = Encoding.UTF8.GetString(memoryStream.ToArray());
            }
            else
            {
                textEditor.Text =
                    $"Could not find Resource for {selectedType.Name}, try it with its base class, {selectedType.BaseType}";
            }
                
            
                
        }
    }
}