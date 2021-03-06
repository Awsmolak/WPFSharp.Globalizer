﻿<Window x:Class="$rootnamespace$.Example.GlobalizedWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:globcntrls="clr-namespace:WPFSharp.Globalizer.Controls;assembly=WPFSharp.Globalizer"
        xmlns:Globalizer="clr-namespace:WPFSharp.Globalizer;assembly=WPFSharp.Globalizer"
        Title="{DynamicResource MainWindow_Title}" 
        Height="350" Width="525"
        FlowDirection="{DynamicResource ResourceKey=FlowDirection_Default}"
        Background="{DynamicResource ResourceKey=MainWindowBackground}"
        >
    <Grid>
        <Grid.RowDefinitions>
            <RowDefinition Height="Auto" />
            <RowDefinition Height="Auto" />
            <RowDefinition Height="10" />
            <RowDefinition Height="Auto" />
            <RowDefinition Height="Auto" />
            <RowDefinition Height="Auto" />
            <RowDefinition Height="Auto" />
            <RowDefinition Height="25" />
        </Grid.RowDefinitions>
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="15" />
            <ColumnDefinition Width="*" MinWidth="100"/>
            <ColumnDefinition Width="*" MinWidth="200"/>
            <ColumnDefinition Width="15" />
        </Grid.ColumnDefinitions>
        <DockPanel Grid.ColumnSpan="4" >
            <Menu DockPanel.Dock="Top" >
                <MenuItem Header="{Globalizer:GlobalizedResource Menu_File, FallbackValue='_File'}">
                    <MenuItem Header="{Globalizer:GlobalizedResource Menu_File_Exit, FallbackValue='E_xit'}" Click="MenuItem_Exit_Click" />
                </MenuItem>
                <globcntrls:LanguageSelectionMenuItemList Header="{Globalizer:GlobalizedResource Menu_Language, FallbackValue=Language}"/>
                <globcntrls:StyleSelectionMenuItemList Header="{Globalizer:GlobalizedResource Menu_Styles, FallbackValue=Styles}" />
            </Menu>
        </DockPanel>
        <DockPanel Grid.Row="1" Grid.Column="2" >
            <Label Content="{Globalizer:GlobalizedResource Menu_Language, FallbackValue=Language}" DockPanel.Dock="Left"/>
            <globcntrls:LanguageSelectionComboBox FlowDirection="{DynamicResource FlowDirection_Default}" />
        </DockPanel>
        <Label Content="{Globalizer:GlobalizedResource Form_FirstName, FallbackValue='First Name'}" Name="labelFirstName" Grid.Row="3" FlowDirection="{DynamicResource FlowDirection_Reverse}" Grid.Column="1" />
        <Label Content="{Globalizer:GlobalizedResource Form_LastName, FallbackValue='Last Name'}" Name="labelLastName" Grid.Row="4" FlowDirection="{DynamicResource FlowDirection_Reverse}" Grid.Column="1" />
        <Label Content="{Globalizer:GlobalizedResource Form_Age, FallbackValue=Age}" Name="labelAge" Grid.Row="5" FlowDirection="{DynamicResource FlowDirection_Reverse}" Grid.Column="1" />
        <TextBox Name="FirstNameTextBox" Grid.Column="2" Grid.Row="3" />
        <TextBox Name="LastNameTextBox" Grid.Column="2" Grid.Row="4" />
        <TextBox Name="AgeTextBox" Grid.Column="2" Grid.Row="5" />
        <Button Content="{Globalizer:GlobalizedResource Form_Button_Clear, FallbackValue=Clear}" Grid.Column="2" Grid.Row="6" HorizontalAlignment="Right" Name="ButtonClear" Width="75" MinHeight="20" Click="button1_Click" />
    </Grid>
</Window>
