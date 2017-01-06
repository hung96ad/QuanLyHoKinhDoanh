namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class QuanLyHoKinhDoanhDBContext : DbContext
    {
        public QuanLyHoKinhDoanhDBContext()
            : base("name=QuanLyHoKinhDoanhDBContext")
        {
        }

        public virtual DbSet<Action> Actions { get; set; }
        public virtual DbSet<Account> Accounts { get; set; }
        public virtual DbSet<ChucNang> ChucNangs { get; set; }
        public virtual DbSet<ChuHoKinhDoanh> ChuHoKinhDoanhs { get; set; }
        public virtual DbSet<HopDongKiot> HopDongKiots { get; set; }
        public virtual DbSet<Kiot> Kiots { get; set; }
        public virtual DbSet<NangCapCho> NangCapChoes { get; set; }
        public virtual DbSet<NhanVien> NhanViens { get; set; }
        public virtual DbSet<PhanQuyen> PhanQuyens { get; set; }
        public virtual DbSet<Quyen> Quyens { get; set; }
        public virtual DbSet<PhiHoKinhDoanh> PhiHoKinhDoanhs { get; set; }
        public virtual DbSet<ThietBi> ThietBis { get; set; }
        public virtual DbSet<ThongBao> ThongBaos { get; set; }
        public virtual DbSet<Thue> Thues { get; set; }
        public virtual DbSet<TienDienNuoc> TienDienNuocs { get; set; }
        public virtual DbSet<TienLuongNV> TienLuongNVs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Action>()
                .Property(e => e.Action1)
                .IsFixedLength();

            modelBuilder.Entity<Action>()
                .HasMany(e => e.Quyens)
                .WithRequired(e => e.Action1)
                .HasForeignKey(e => e.Action)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.UserID)
                .IsFixedLength();

            modelBuilder.Entity<Account>()
                .Property(e => e.Email)
                .IsFixedLength();

            modelBuilder.Entity<ChucNang>()
                .Property(e => e.Ma)
                .IsFixedLength();

            modelBuilder.Entity<ChuHoKinhDoanh>()
                .Property(e => e.MaKinhDoanh)
                .IsFixedLength();

            modelBuilder.Entity<ChuHoKinhDoanh>()
                .HasMany(e => e.HopDongKiots)
                .WithRequired(e => e.ChuHoKinhDoanh)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ChuHoKinhDoanh>()
                .HasMany(e => e.PhiHoKinhDoanhs)
                .WithRequired(e => e.ChuHoKinhDoanh)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ChuHoKinhDoanh>()
                .HasMany(e => e.Thues)
                .WithRequired(e => e.ChuHoKinhDoanh)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ChuHoKinhDoanh>()
                .HasMany(e => e.TienDienNuocs)
                .WithRequired(e => e.ChuHoKinhDoanh)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HopDongKiot>()
                .Property(e => e.MaKinhDoanh)
                .IsFixedLength();

            modelBuilder.Entity<HopDongKiot>()
                .Property(e => e.MaKiot)
                .IsFixedLength();

            modelBuilder.Entity<Kiot>()
                .Property(e => e.MaKiot)
                .IsFixedLength();

            modelBuilder.Entity<Kiot>()
                .HasMany(e => e.HopDongKiots)
                .WithRequired(e => e.Kiot)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.MaNhanVien)
                .IsFixedLength();

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.ThietBis)
                .WithRequired(e => e.NhanVien)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .HasOptional(e => e.TienLuongNV)
                .WithRequired(e => e.NhanVien);

            modelBuilder.Entity<PhanQuyen>()
                .HasMany(e => e.Accounts)
                .WithRequired(e => e.PhanQuyen)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PhiHoKinhDoanh>()
                .Property(e => e.MaKinhDoanh)
                .IsFixedLength();

            modelBuilder.Entity<ThietBi>()
                .Property(e => e.MaNhanVien)
                .IsFixedLength();

            modelBuilder.Entity<ThongBao>()
                .Property(e => e.UserID)
                .IsFixedLength();

            modelBuilder.Entity<Thue>()
                .Property(e => e.MaKinhDoanh)
                .IsFixedLength();

            modelBuilder.Entity<TienDienNuoc>()
                .Property(e => e.MaKinhDoanh)
                .IsFixedLength();

            modelBuilder.Entity<TienLuongNV>()
                .Property(e => e.MaNhanVien)
                .IsFixedLength();

            modelBuilder.Entity<PhanQuyen>()
                .HasMany(e => e.Quyens)
                .WithRequired(e => e.PhanQuyen)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Quyen>()
                .Property(e => e.Action)
                .IsFixedLength();
        }



    }
}
