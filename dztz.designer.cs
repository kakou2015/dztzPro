﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace dztzPro
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="dztz")]
	public partial class DztzDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertLedgerNodeItem(LedgerNodeItem instance);
    partial void UpdateLedgerNodeItem(LedgerNodeItem instance);
    partial void DeleteLedgerNodeItem(LedgerNodeItem instance);
    partial void InsertLedgerNode(LedgerNode instance);
    partial void UpdateLedgerNode(LedgerNode instance);
    partial void DeleteLedgerNode(LedgerNode instance);
    partial void InsertAccessLevel(AccessLevel instance);
    partial void UpdateAccessLevel(AccessLevel instance);
    partial void DeleteAccessLevel(AccessLevel instance);
    partial void InsertUser(User instance);
    partial void UpdateUser(User instance);
    partial void DeleteUser(User instance);
    #endregion
		
		public DztzDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["dztzConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DztzDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DztzDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DztzDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DztzDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<LedgerNodeItem> LedgerNodeItems
		{
			get
			{
				return this.GetTable<LedgerNodeItem>();
			}
		}
		
		public System.Data.Linq.Table<LedgerNode> LedgerNodes
		{
			get
			{
				return this.GetTable<LedgerNode>();
			}
		}
		
		public System.Data.Linq.Table<AccessLevel> AccessLevels
		{
			get
			{
				return this.GetTable<AccessLevel>();
			}
		}
		
		public System.Data.Linq.Table<User> Users
		{
			get
			{
				return this.GetTable<User>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LedgerNodeItem")]
	public partial class LedgerNodeItem : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Id;
		
		private int _LedgerNodeId;
		
		private string _LedgerNodeName;
		
		private string _CreateUser;
		
		private string _CreateTime;
		
		private string _ModifyUser;
		
		private string _ModifyTime;
		
		private int _Status;
		
		private string _TemplateValue;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnLedgerNodeIdChanging(int value);
    partial void OnLedgerNodeIdChanged();
    partial void OnLedgerNodeNameChanging(string value);
    partial void OnLedgerNodeNameChanged();
    partial void OnCreateUserChanging(string value);
    partial void OnCreateUserChanged();
    partial void OnCreateTimeChanging(string value);
    partial void OnCreateTimeChanged();
    partial void OnModifyUserChanging(string value);
    partial void OnModifyUserChanged();
    partial void OnModifyTimeChanging(string value);
    partial void OnModifyTimeChanged();
    partial void OnStatusChanging(int value);
    partial void OnStatusChanged();
    partial void OnTemplateValueChanging(string value);
    partial void OnTemplateValueChanged();
    #endregion
		
		public LedgerNodeItem()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this.OnIdChanging(value);
					this.SendPropertyChanging();
					this._Id = value;
					this.SendPropertyChanged("Id");
					this.OnIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LedgerNodeId", DbType="Int NOT NULL")]
		public int LedgerNodeId
		{
			get
			{
				return this._LedgerNodeId;
			}
			set
			{
				if ((this._LedgerNodeId != value))
				{
					this.OnLedgerNodeIdChanging(value);
					this.SendPropertyChanging();
					this._LedgerNodeId = value;
					this.SendPropertyChanged("LedgerNodeId");
					this.OnLedgerNodeIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LedgerNodeName", DbType="NVarChar(250)")]
		public string LedgerNodeName
		{
			get
			{
				return this._LedgerNodeName;
			}
			set
			{
				if ((this._LedgerNodeName != value))
				{
					this.OnLedgerNodeNameChanging(value);
					this.SendPropertyChanging();
					this._LedgerNodeName = value;
					this.SendPropertyChanged("LedgerNodeName");
					this.OnLedgerNodeNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CreateUser", DbType="NVarChar(250)")]
		public string CreateUser
		{
			get
			{
				return this._CreateUser;
			}
			set
			{
				if ((this._CreateUser != value))
				{
					this.OnCreateUserChanging(value);
					this.SendPropertyChanging();
					this._CreateUser = value;
					this.SendPropertyChanged("CreateUser");
					this.OnCreateUserChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CreateTime", DbType="NVarChar(250)")]
		public string CreateTime
		{
			get
			{
				return this._CreateTime;
			}
			set
			{
				if ((this._CreateTime != value))
				{
					this.OnCreateTimeChanging(value);
					this.SendPropertyChanging();
					this._CreateTime = value;
					this.SendPropertyChanged("CreateTime");
					this.OnCreateTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ModifyUser", DbType="NVarChar(250)")]
		public string ModifyUser
		{
			get
			{
				return this._ModifyUser;
			}
			set
			{
				if ((this._ModifyUser != value))
				{
					this.OnModifyUserChanging(value);
					this.SendPropertyChanging();
					this._ModifyUser = value;
					this.SendPropertyChanged("ModifyUser");
					this.OnModifyUserChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ModifyTime", DbType="NVarChar(250)")]
		public string ModifyTime
		{
			get
			{
				return this._ModifyTime;
			}
			set
			{
				if ((this._ModifyTime != value))
				{
					this.OnModifyTimeChanging(value);
					this.SendPropertyChanging();
					this._ModifyTime = value;
					this.SendPropertyChanged("ModifyTime");
					this.OnModifyTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Status", DbType="Int NOT NULL")]
		public int Status
		{
			get
			{
				return this._Status;
			}
			set
			{
				if ((this._Status != value))
				{
					this.OnStatusChanging(value);
					this.SendPropertyChanging();
					this._Status = value;
					this.SendPropertyChanged("Status");
					this.OnStatusChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TemplateValue", DbType="Text", UpdateCheck=UpdateCheck.Never)]
		public string TemplateValue
		{
			get
			{
				return this._TemplateValue;
			}
			set
			{
				if ((this._TemplateValue != value))
				{
					this.OnTemplateValueChanging(value);
					this.SendPropertyChanging();
					this._TemplateValue = value;
					this.SendPropertyChanged("TemplateValue");
					this.OnTemplateValueChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LedgerNode")]
	public partial class LedgerNode : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Id;
		
		private string _LedgerNodeType;
		
		private string _LedgerNodeName;
		
		private string _Station;
		
		private int _AccessLevel;
		
		private string _CreateUser;
		
		private string _CreateTime;
		
		private string _ModifyUser;
		
		private string _ModifyTime;
		
		private string _Reserved1;
		
		private string _Reserved2;
		
		private string _TemplateFileName;
		
		private string _TemplateContent;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnLedgerNodeTypeChanging(string value);
    partial void OnLedgerNodeTypeChanged();
    partial void OnLedgerNodeNameChanging(string value);
    partial void OnLedgerNodeNameChanged();
    partial void OnStationChanging(string value);
    partial void OnStationChanged();
    partial void OnAccessLevelChanging(int value);
    partial void OnAccessLevelChanged();
    partial void OnCreateUserChanging(string value);
    partial void OnCreateUserChanged();
    partial void OnCreateTimeChanging(string value);
    partial void OnCreateTimeChanged();
    partial void OnModifyUserChanging(string value);
    partial void OnModifyUserChanged();
    partial void OnModifyTimeChanging(string value);
    partial void OnModifyTimeChanged();
    partial void OnReserved1Changing(string value);
    partial void OnReserved1Changed();
    partial void OnReserved2Changing(string value);
    partial void OnReserved2Changed();
    partial void OnTemplateFileNameChanging(string value);
    partial void OnTemplateFileNameChanged();
    partial void OnTemplateContentChanging(string value);
    partial void OnTemplateContentChanged();
    #endregion
		
		public LedgerNode()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this.OnIdChanging(value);
					this.SendPropertyChanging();
					this._Id = value;
					this.SendPropertyChanged("Id");
					this.OnIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LedgerNodeType", DbType="NVarChar(250)")]
		public string LedgerNodeType
		{
			get
			{
				return this._LedgerNodeType;
			}
			set
			{
				if ((this._LedgerNodeType != value))
				{
					this.OnLedgerNodeTypeChanging(value);
					this.SendPropertyChanging();
					this._LedgerNodeType = value;
					this.SendPropertyChanged("LedgerNodeType");
					this.OnLedgerNodeTypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LedgerNodeName", DbType="NVarChar(250)")]
		public string LedgerNodeName
		{
			get
			{
				return this._LedgerNodeName;
			}
			set
			{
				if ((this._LedgerNodeName != value))
				{
					this.OnLedgerNodeNameChanging(value);
					this.SendPropertyChanging();
					this._LedgerNodeName = value;
					this.SendPropertyChanged("LedgerNodeName");
					this.OnLedgerNodeNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Station", DbType="NVarChar(250)")]
		public string Station
		{
			get
			{
				return this._Station;
			}
			set
			{
				if ((this._Station != value))
				{
					this.OnStationChanging(value);
					this.SendPropertyChanging();
					this._Station = value;
					this.SendPropertyChanged("Station");
					this.OnStationChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AccessLevel", DbType="Int NOT NULL")]
		public int AccessLevel
		{
			get
			{
				return this._AccessLevel;
			}
			set
			{
				if ((this._AccessLevel != value))
				{
					this.OnAccessLevelChanging(value);
					this.SendPropertyChanging();
					this._AccessLevel = value;
					this.SendPropertyChanged("AccessLevel");
					this.OnAccessLevelChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CreateUser", DbType="NVarChar(250)")]
		public string CreateUser
		{
			get
			{
				return this._CreateUser;
			}
			set
			{
				if ((this._CreateUser != value))
				{
					this.OnCreateUserChanging(value);
					this.SendPropertyChanging();
					this._CreateUser = value;
					this.SendPropertyChanged("CreateUser");
					this.OnCreateUserChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CreateTime", DbType="NVarChar(250)")]
		public string CreateTime
		{
			get
			{
				return this._CreateTime;
			}
			set
			{
				if ((this._CreateTime != value))
				{
					this.OnCreateTimeChanging(value);
					this.SendPropertyChanging();
					this._CreateTime = value;
					this.SendPropertyChanged("CreateTime");
					this.OnCreateTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ModifyUser", DbType="NVarChar(250)")]
		public string ModifyUser
		{
			get
			{
				return this._ModifyUser;
			}
			set
			{
				if ((this._ModifyUser != value))
				{
					this.OnModifyUserChanging(value);
					this.SendPropertyChanging();
					this._ModifyUser = value;
					this.SendPropertyChanged("ModifyUser");
					this.OnModifyUserChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ModifyTime", DbType="NVarChar(250)")]
		public string ModifyTime
		{
			get
			{
				return this._ModifyTime;
			}
			set
			{
				if ((this._ModifyTime != value))
				{
					this.OnModifyTimeChanging(value);
					this.SendPropertyChanging();
					this._ModifyTime = value;
					this.SendPropertyChanged("ModifyTime");
					this.OnModifyTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Reserved1", DbType="NVarChar(250)")]
		public string Reserved1
		{
			get
			{
				return this._Reserved1;
			}
			set
			{
				if ((this._Reserved1 != value))
				{
					this.OnReserved1Changing(value);
					this.SendPropertyChanging();
					this._Reserved1 = value;
					this.SendPropertyChanged("Reserved1");
					this.OnReserved1Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Reserved2", DbType="NVarChar(250)")]
		public string Reserved2
		{
			get
			{
				return this._Reserved2;
			}
			set
			{
				if ((this._Reserved2 != value))
				{
					this.OnReserved2Changing(value);
					this.SendPropertyChanging();
					this._Reserved2 = value;
					this.SendPropertyChanged("Reserved2");
					this.OnReserved2Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TemplateFileName", DbType="NVarChar(250)")]
		public string TemplateFileName
		{
			get
			{
				return this._TemplateFileName;
			}
			set
			{
				if ((this._TemplateFileName != value))
				{
					this.OnTemplateFileNameChanging(value);
					this.SendPropertyChanging();
					this._TemplateFileName = value;
					this.SendPropertyChanged("TemplateFileName");
					this.OnTemplateFileNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TemplateContent", DbType="Text", UpdateCheck=UpdateCheck.Never)]
		public string TemplateContent
		{
			get
			{
				return this._TemplateContent;
			}
			set
			{
				if ((this._TemplateContent != value))
				{
					this.OnTemplateContentChanging(value);
					this.SendPropertyChanging();
					this._TemplateContent = value;
					this.SendPropertyChanged("TemplateContent");
					this.OnTemplateContentChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.AccessLevel")]
	public partial class AccessLevel : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _ALName;
		
		private long _ALValue;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnALNameChanging(string value);
    partial void OnALNameChanged();
    partial void OnALValueChanging(long value);
    partial void OnALValueChanged();
    #endregion
		
		public AccessLevel()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ALName", DbType="NChar(255) NOT NULL", CanBeNull=false)]
		public string ALName
		{
			get
			{
				return this._ALName;
			}
			set
			{
				if ((this._ALName != value))
				{
					this.OnALNameChanging(value);
					this.SendPropertyChanging();
					this._ALName = value;
					this.SendPropertyChanged("ALName");
					this.OnALNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ALValue", DbType="BigInt NOT NULL", IsPrimaryKey=true)]
		public long ALValue
		{
			get
			{
				return this._ALValue;
			}
			set
			{
				if ((this._ALValue != value))
				{
					this.OnALValueChanging(value);
					this.SendPropertyChanging();
					this._ALValue = value;
					this.SendPropertyChanged("ALValue");
					this.OnALValueChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.[User]")]
	public partial class User : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private long _UserId;
		
		private string _LoginName;
		
		private string _UserName;
		
		private string _UserPassword;
		
		private string _MobilePhone;
		
		private string _Email;
		
		private string _Department;
		
		private string _Occupation;
		
		private long _Superior;
		
		private long _AccessRight;
		
		private string _Description;
		
		private System.DateTime _CreateTime;
		
		private System.Nullable<System.DateTime> _LoginTime;
		
		private System.Nullable<System.DateTime> _LastLoginTime;
		
		private long _LoginCount;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnUserIdChanging(long value);
    partial void OnUserIdChanged();
    partial void OnLoginNameChanging(string value);
    partial void OnLoginNameChanged();
    partial void OnUserNameChanging(string value);
    partial void OnUserNameChanged();
    partial void OnUserPasswordChanging(string value);
    partial void OnUserPasswordChanged();
    partial void OnMobilePhoneChanging(string value);
    partial void OnMobilePhoneChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnDepartmentChanging(string value);
    partial void OnDepartmentChanged();
    partial void OnOccupationChanging(string value);
    partial void OnOccupationChanged();
    partial void OnSuperiorChanging(long value);
    partial void OnSuperiorChanged();
    partial void OnAccessRightChanging(long value);
    partial void OnAccessRightChanged();
    partial void OnDescriptionChanging(string value);
    partial void OnDescriptionChanged();
    partial void OnCreateTimeChanging(System.DateTime value);
    partial void OnCreateTimeChanged();
    partial void OnLoginTimeChanging(System.Nullable<System.DateTime> value);
    partial void OnLoginTimeChanged();
    partial void OnLastLoginTimeChanging(System.Nullable<System.DateTime> value);
    partial void OnLastLoginTimeChanged();
    partial void OnLoginCountChanging(long value);
    partial void OnLoginCountChanged();
    #endregion
		
		public User()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserId", AutoSync=AutoSync.OnInsert, DbType="BigInt NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public long UserId
		{
			get
			{
				return this._UserId;
			}
			set
			{
				if ((this._UserId != value))
				{
					this.OnUserIdChanging(value);
					this.SendPropertyChanging();
					this._UserId = value;
					this.SendPropertyChanged("UserId");
					this.OnUserIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LoginName", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string LoginName
		{
			get
			{
				return this._LoginName;
			}
			set
			{
				if ((this._LoginName != value))
				{
					this.OnLoginNameChanging(value);
					this.SendPropertyChanging();
					this._LoginName = value;
					this.SendPropertyChanged("LoginName");
					this.OnLoginNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserName", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string UserName
		{
			get
			{
				return this._UserName;
			}
			set
			{
				if ((this._UserName != value))
				{
					this.OnUserNameChanging(value);
					this.SendPropertyChanging();
					this._UserName = value;
					this.SendPropertyChanged("UserName");
					this.OnUserNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserPassword", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string UserPassword
		{
			get
			{
				return this._UserPassword;
			}
			set
			{
				if ((this._UserPassword != value))
				{
					this.OnUserPasswordChanging(value);
					this.SendPropertyChanging();
					this._UserPassword = value;
					this.SendPropertyChanged("UserPassword");
					this.OnUserPasswordChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MobilePhone", DbType="NVarChar(32)")]
		public string MobilePhone
		{
			get
			{
				return this._MobilePhone;
			}
			set
			{
				if ((this._MobilePhone != value))
				{
					this.OnMobilePhoneChanging(value);
					this.SendPropertyChanging();
					this._MobilePhone = value;
					this.SendPropertyChanged("MobilePhone");
					this.OnMobilePhoneChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="NVarChar(255)")]
		public string Email
		{
			get
			{
				return this._Email;
			}
			set
			{
				if ((this._Email != value))
				{
					this.OnEmailChanging(value);
					this.SendPropertyChanging();
					this._Email = value;
					this.SendPropertyChanged("Email");
					this.OnEmailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Department", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Department
		{
			get
			{
				return this._Department;
			}
			set
			{
				if ((this._Department != value))
				{
					this.OnDepartmentChanging(value);
					this.SendPropertyChanging();
					this._Department = value;
					this.SendPropertyChanged("Department");
					this.OnDepartmentChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Occupation", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Occupation
		{
			get
			{
				return this._Occupation;
			}
			set
			{
				if ((this._Occupation != value))
				{
					this.OnOccupationChanging(value);
					this.SendPropertyChanging();
					this._Occupation = value;
					this.SendPropertyChanged("Occupation");
					this.OnOccupationChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Superior", DbType="BigInt NOT NULL")]
		public long Superior
		{
			get
			{
				return this._Superior;
			}
			set
			{
				if ((this._Superior != value))
				{
					this.OnSuperiorChanging(value);
					this.SendPropertyChanging();
					this._Superior = value;
					this.SendPropertyChanged("Superior");
					this.OnSuperiorChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AccessRight", DbType="BigInt NOT NULL")]
		public long AccessRight
		{
			get
			{
				return this._AccessRight;
			}
			set
			{
				if ((this._AccessRight != value))
				{
					this.OnAccessRightChanging(value);
					this.SendPropertyChanging();
					this._AccessRight = value;
					this.SendPropertyChanged("AccessRight");
					this.OnAccessRightChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Description", DbType="NVarChar(10)")]
		public string Description
		{
			get
			{
				return this._Description;
			}
			set
			{
				if ((this._Description != value))
				{
					this.OnDescriptionChanging(value);
					this.SendPropertyChanging();
					this._Description = value;
					this.SendPropertyChanged("Description");
					this.OnDescriptionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CreateTime", DbType="DateTime NOT NULL")]
		public System.DateTime CreateTime
		{
			get
			{
				return this._CreateTime;
			}
			set
			{
				if ((this._CreateTime != value))
				{
					this.OnCreateTimeChanging(value);
					this.SendPropertyChanging();
					this._CreateTime = value;
					this.SendPropertyChanged("CreateTime");
					this.OnCreateTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LoginTime", DbType="DateTime")]
		public System.Nullable<System.DateTime> LoginTime
		{
			get
			{
				return this._LoginTime;
			}
			set
			{
				if ((this._LoginTime != value))
				{
					this.OnLoginTimeChanging(value);
					this.SendPropertyChanging();
					this._LoginTime = value;
					this.SendPropertyChanged("LoginTime");
					this.OnLoginTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LastLoginTime", DbType="DateTime")]
		public System.Nullable<System.DateTime> LastLoginTime
		{
			get
			{
				return this._LastLoginTime;
			}
			set
			{
				if ((this._LastLoginTime != value))
				{
					this.OnLastLoginTimeChanging(value);
					this.SendPropertyChanging();
					this._LastLoginTime = value;
					this.SendPropertyChanged("LastLoginTime");
					this.OnLastLoginTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LoginCount", DbType="BigInt NOT NULL")]
		public long LoginCount
		{
			get
			{
				return this._LoginCount;
			}
			set
			{
				if ((this._LoginCount != value))
				{
					this.OnLoginCountChanging(value);
					this.SendPropertyChanging();
					this._LoginCount = value;
					this.SendPropertyChanged("LoginCount");
					this.OnLoginCountChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
