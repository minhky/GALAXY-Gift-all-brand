.class Lcom/google/android/gms/tagmanager/zzcp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzcp$zzb;,
        Lcom/google/android/gms/tagmanager/zzcp$zza;,
        Lcom/google/android/gms/tagmanager/zzcp$zzc;
    }
.end annotation


# static fields
.field private static final zzbfj:Lcom/google/android/gms/tagmanager/zzbw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbcG:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final zzbfk:Lcom/google/android/gms/internal/zzsh$zzc;

.field private final zzbfl:Lcom/google/android/gms/tagmanager/zzah;

.field private final zzbfm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzak;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbfn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzak;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzak;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbfp:Lcom/google/android/gms/tagmanager/zzl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzl",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zza;",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbfq:Lcom/google/android/gms/tagmanager/zzl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzl",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzcp$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbfr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zze;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbfs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzcp$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbft:Ljava/lang/String;

.field private zzbfu:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzFJ()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzsh$zzc;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzt$zza;Lcom/google/android/gms/tagmanager/zzt$zza;Lcom/google/android/gms/tagmanager/zzah;)V
    .registers 15

    const/high16 v2, 0x100000

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_11

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resource cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfk:Lcom/google/android/gms/internal/zzsh$zzc;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzsh$zzc;->zzFP()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfr:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbcG:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfl:Lcom/google/android/gms/tagmanager/zzah;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcp$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcp$1;-><init>(Lcom/google/android/gms/tagmanager/zzcp;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/zzm;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzm;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/tagmanager/zzm;->zza(ILcom/google/android/gms/tagmanager/zzm$zza;)Lcom/google/android/gms/tagmanager/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfp:Lcom/google/android/gms/tagmanager/zzl;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcp$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcp$2;-><init>(Lcom/google/android/gms/tagmanager/zzcp;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/zzm;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzm;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/tagmanager/zzm;->zza(ILcom/google/android/gms/tagmanager/zzm$zza;)Lcom/google/android/gms/tagmanager/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfq:Lcom/google/android/gms/tagmanager/zzl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfm:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzj;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzb(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzt;

    invoke-direct {v0, p5}, Lcom/google/android/gms/tagmanager/zzt;-><init>(Lcom/google/android/gms/tagmanager/zzt$zza;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzb(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzx;

    invoke-direct {v0, p3}, Lcom/google/android/gms/tagmanager/zzx;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzb(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdg;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/tagmanager/zzdg;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzb(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdb;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/tagmanager/zzdb;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzb(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfn:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzr;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzae;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzaf;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzam;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzam;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzan;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbc;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbc;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcf;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcf;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcy;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfo:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzb;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzc;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zze;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zze;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzf;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzh;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzi;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzq;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfk:Lcom/google/android/gms/internal/zzsh$zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsh$zzc;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/zzq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzt;

    invoke-direct {v0, p4}, Lcom/google/android/gms/tagmanager/zzt;-><init>(Lcom/google/android/gms/tagmanager/zzt$zza;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzv;

    invoke-direct {v0, p3}, Lcom/google/android/gms/tagmanager/zzv;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzaa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzaa;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzab;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzad;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzai;-><init>(Lcom/google/android/gms/tagmanager/zzcp;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzao;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzap;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzaw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzay;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzay;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbb;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbi;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzbk;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbx;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbz;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbz;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcc;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcc;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzce;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzce;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzcg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcq;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcq;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcr;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcr;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzda;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzda;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdh;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdh;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/tagmanager/zzak;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfs:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfr:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsh$zze;

    invoke-interface {p6}, Lcom/google/android/gms/tagmanager/zzah;->zzEE()Z

    move-result v1

    if-eqz v1, :cond_21c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFX()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFY()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "add macro"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzGc()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFZ()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "remove macro"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFV()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzGa()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "add tag"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFW()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzGb()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "remove tag"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_21c
    move v3, v4

    :goto_21d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFX()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_265

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFX()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzsh$zza;

    const-string/jumbo v2, "Unknown"

    invoke-interface {p6}, Lcom/google/android/gms/tagmanager/zzah;->zzEE()Z

    move-result v6

    if-eqz v6, :cond_24e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFY()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_24e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFY()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_24e
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfs:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzsh$zza;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/zzcp;->zzi(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzcp$zzc;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zza(Lcom/google/android/gms/internal/zzsh$zze;)V

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zza(Lcom/google/android/gms/internal/zzsh$zze;Lcom/google/android/gms/internal/zzsh$zza;)V

    invoke-virtual {v6, v0, v2}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zza(Lcom/google/android/gms/internal/zzsh$zze;Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_21d

    :cond_265
    move v3, v4

    :goto_266
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzGc()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1d2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzGc()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzsh$zza;

    const-string/jumbo v2, "Unknown"

    invoke-interface {p6}, Lcom/google/android/gms/tagmanager/zzah;->zzEE()Z

    move-result v6

    if-eqz v6, :cond_297

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFZ()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_297

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zze;->zzFZ()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_297
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfs:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzsh$zza;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/zzcp;->zzi(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzcp$zzc;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zza(Lcom/google/android/gms/internal/zzsh$zze;)V

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zzb(Lcom/google/android/gms/internal/zzsh$zze;Lcom/google/android/gms/internal/zzsh$zza;)V

    invoke-virtual {v6, v0, v2}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zzb(Lcom/google/android/gms/internal/zzsh$zze;Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_266

    :cond_2ae
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfk:Lcom/google/android/gms/internal/zzsh$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsh$zzc;->zzFQ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2bc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_308

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d2
    :goto_2d2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2bc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzsh$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsh$zza;->zzFM()Ljava/util/Map;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/zzae;->zzgk:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdf;->zzk(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2d2

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/google/android/gms/tagmanager/zzcp;->zzi(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzcp$zzc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zzb(Lcom/google/android/gms/internal/zzsh$zza;)V

    goto :goto_2d2

    :cond_308
    return-void
.end method

.method private zzFj()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_9

    const-string/jumbo v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    :goto_18
    iget v2, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    if-ge v0, v2, :cond_24

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_24
    const-string/jumbo v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdi;)Lcom/google/android/gms/tagmanager/zzbw;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzag$zza;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzdi;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjy:Z

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbw;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    :goto_b
    return-object v0

    :cond_c
    iget v0, p1, Lcom/google/android/gms/internal/zzag$zza;->type:I

    packed-switch v0, :pswitch_data_180

    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/gms/internal/zzag$zza;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto :goto_b

    :pswitch_2d
    invoke-static {p1}, Lcom/google/android/gms/internal/zzsh;->zzo(Lcom/google/android/gms/internal/zzag$zza;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzag$zza;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    move v1, v2

    :goto_39
    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-ge v1, v0, :cond_5f

    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzjQ(I)Lcom/google/android/gms/tagmanager/zzdi;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdi;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    if-ne v0, v4, :cond_51

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto :goto_b

    :cond_51
    iget-object v4, v3, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_39

    :cond_5f
    new-instance v0, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    goto :goto_b

    :pswitch_65
    invoke-static {p1}, Lcom/google/android/gms/internal/zzsh;->zzo(Lcom/google/android/gms/internal/zzag$zza;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v1, v1

    if-eq v0, v1, :cond_90

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid serving value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzag$zza;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto/16 :goto_b

    :cond_90
    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzag$zza;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzag$zza;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    move v1, v2

    :goto_9f
    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-ge v1, v0, :cond_e0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzjR(I)Lcom/google/android/gms/tagmanager/zzdi;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdi;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v0

    iget-object v4, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v4, v4, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzjS(I)Lcom/google/android/gms/tagmanager/zzdi;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdi;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    if-eq v0, v5, :cond_c4

    sget-object v5, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    if-ne v4, v5, :cond_c8

    :cond_c4
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto/16 :goto_b

    :cond_c8
    iget-object v5, v3, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    aput-object v0, v5, v1

    iget-object v5, v3, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9f

    :cond_e0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_e7
    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  Previous macro references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto/16 :goto_b

    :cond_129
    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzdi;->zzES()Lcom/google/android/gms/tagmanager/zzbj;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzbj;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzdj;->zza(Lcom/google/android/gms/tagmanager/zzbw;[I)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :pswitch_145
    invoke-static {p1}, Lcom/google/android/gms/internal/zzsh;->zzo(Lcom/google/android/gms/internal/zzag$zza;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzag$zza;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    move v1, v2

    :goto_151
    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-ge v1, v0, :cond_178

    iget-object v0, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzjT(I)Lcom/google/android/gms/tagmanager/zzdi;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdi;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    if-ne v0, v4, :cond_16a

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto/16 :goto_b

    :cond_16a
    iget-object v4, v3, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_151

    :cond_178
    new-instance v0, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    nop

    :pswitch_data_180
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_65
        :pswitch_e7
        :pswitch_11
        :pswitch_11
        :pswitch_145
    .end packed-switch
.end method

.method private zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzbj;)Lcom/google/android/gms/tagmanager/zzbw;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzbj;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfq:Lcom/google/android/gms/tagmanager/zzl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzcp$zzb;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfl:Lcom/google/android/gms/tagmanager/zzah;

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/zzah;->zzEE()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcp$zzb;->zzFl()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/util/Set;)V

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcp$zzb;->zzFk()Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/tagmanager/zzcp$zzc;

    if-nez v9, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcp;->zzFj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Invalid macro: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto :goto_2a

    :cond_5e
    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zzFm()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zzFn()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zzFo()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zzFq()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zzFp()Ljava/util/Map;

    move-result-object v6

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzbj;->zzEu()Lcom/google/android/gms/tagmanager/zzco;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzco;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzcp$zzc;->zzFr()Lcom/google/android/gms/internal/zzsh$zza;

    move-result-object v0

    move-object v2, v0

    :goto_8e
    if-nez v2, :cond_d6

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto :goto_2a

    :cond_99
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v10, :cond_c4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcp;->zzFj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Multiple macros active for macroName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    :cond_c4
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsh$zza;

    move-object v2, v0

    goto :goto_8e

    :cond_d6
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfo:Ljava/util/Map;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzbj;->zzEK()Lcom/google/android/gms/tagmanager/zzch;

    move-result-object v3

    invoke-direct {p0, v0, v2, p2, v3}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/zzsh$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzch;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzbw;->zzET()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzbw;->zzET()Z

    move-result v0

    if-eqz v0, :cond_112

    move v0, v10

    :goto_ed
    sget-object v1, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    if-ne v3, v1, :cond_114

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    :goto_f3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsh$zza;->zzFl()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbw;->zzET()Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfq:Lcom/google/android/gms/tagmanager/zzl;

    new-instance v3, Lcom/google/android/gms/tagmanager/zzcp$zzb;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/tagmanager/zzcp$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzbw;Lcom/google/android/gms/internal/zzag$zza;)V

    invoke-interface {v2, p1, v3}, Lcom/google/android/gms/tagmanager/zzl;->zzh(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_107
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/util/Set;)V

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    goto/16 :goto_2a

    :cond_112
    const/4 v0, 0x0

    goto :goto_ed

    :cond_114
    new-instance v1, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    goto :goto_f3
.end method

.method private zza(Ljava/util/Map;Lcom/google/android/gms/internal/zzsh$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzch;)Lcom/google/android/gms/tagmanager/zzbw;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzak;",
            ">;",
            "Lcom/google/android/gms/internal/zzsh$zza;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzch;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzsh$zza;->zzFM()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzae;->zzfx:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_1d

    const-string/jumbo v0, "No function id in properties"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    :cond_1c
    :goto_1c
    return-object v1

    :cond_1d
    iget-object v7, v0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzak;

    if-nez v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " has no backing implementation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto :goto_1c

    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfp:Lcom/google/android/gms/tagmanager/zzl;

    invoke-interface {v1, p2}, Lcom/google/android/gms/tagmanager/zzl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzbw;

    if-eqz v1, :cond_53

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfl:Lcom/google/android/gms/tagmanager/zzah;

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/zzah;->zzEE()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_53
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzsh$zza;->zzFM()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v5

    :goto_65
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4, v2}, Lcom/google/android/gms/tagmanager/zzch;->zzfv(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzag$zza;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-interface {v10, v3}, Lcom/google/android/gms/tagmanager/zzcj;->zze(Lcom/google/android/gms/internal/zzag$zza;)Lcom/google/android/gms/tagmanager/zzdi;

    move-result-object v3

    invoke-direct {p0, v2, p3, v3}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdi;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v10

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    if-ne v10, v2, :cond_96

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto :goto_1c

    :cond_96
    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/zzbw;->zzET()Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/zzsh$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;)V

    move v2, v4

    :goto_ac
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    goto :goto_65

    :cond_b9
    move v2, v6

    goto :goto_ac

    :cond_bb
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzak;->zzf(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_fe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incorrect keys for function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzak;->zzEG()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    goto/16 :goto_1c

    :cond_fe
    if-eqz v4, :cond_121

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzak;->zzEa()Z

    move-result v1

    if-eqz v1, :cond_121

    :goto_106
    new-instance v1, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/tagmanager/zzak;->zzI(Ljava/util/Map;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    if-eqz v5, :cond_116

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfp:Lcom/google/android/gms/tagmanager/zzl;

    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/tagmanager/zzl;->zzh(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_116
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-interface {p4, v0}, Lcom/google/android/gms/tagmanager/zzch;->zzd(Lcom/google/android/gms/internal/zzag$zza;)V

    goto/16 :goto_1c

    :cond_121
    move v5, v6

    goto :goto_106
.end method

.method private zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcp$zza;Lcom/google/android/gms/tagmanager/zzco;)Lcom/google/android/gms/tagmanager/zzbw;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zze;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzcp$zza;",
            "Lcom/google/android/gms/tagmanager/zzco;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zza;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsh$zze;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzco;->zzER()Lcom/google/android/gms/tagmanager/zzck;

    move-result-object v7

    invoke-virtual {p0, v0, p2, v7}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzsh$zze;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzck;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p3, v0, v4, v5, v7}, Lcom/google/android/gms/tagmanager/zzcp$zza;->zza(Lcom/google/android/gms/internal/zzsh$zze;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzck;)V

    :cond_33
    if-eqz v2, :cond_3e

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/zzbw;->zzET()Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v3

    :goto_3c
    move v2, v0

    goto :goto_10

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3c

    :cond_40
    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p4, v4}, Lcom/google/android/gms/tagmanager/zzco;->zzg(Ljava/util/Set;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzsh$zza;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsh$zza;->zzFM()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzae;->zzfI:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzag$zza;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/tagmanager/zzbu;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbu;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdi;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcp;->zzbfj:Lcom/google/android/gms/tagmanager/zzbw;

    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_26

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbcG:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_2

    :cond_26
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4d

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_46

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbcG:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_30

    :cond_46
    const-string/jumbo v0, "pushAfterEvaluate: value not a Map"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    goto :goto_30

    :cond_4d
    const-string/jumbo v0, "pushAfterEvaluate: value not a Map or List"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static zza(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zza;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid resource: imbalance of rule names of functions for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " operation. Using default rule name instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaG(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private static zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzak;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzak;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzak;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzak;->zzEF()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate function type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzak;->zzEF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzak;->zzEF()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzi(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzcp$zzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzcp$zzc;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzcp$zzc;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzcp$zzc;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcp$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcp$zzc;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v0
.end method


# virtual methods
.method public declared-synchronized zzC(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaf$zzi;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaf$zzi;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaf$zzi;->name:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaf$zzi;->name:Ljava/lang/String;

    const-string/jumbo v3, "gaExperiment:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignored supplemental: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_5

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3b
    :try_start_3b
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbcG:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/zzaj;->zza(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzaf$zzi;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    goto :goto_5

    :cond_41
    monitor-exit p0

    return-void
.end method

.method declared-synchronized zzFi()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbft:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method zza(Lcom/google/android/gms/internal/zzsh$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzch;)Lcom/google/android/gms/tagmanager/zzbw;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzsh$zza;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzch;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfn:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/zzsh$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzch;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzk(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/android/gms/tagmanager/zzch;->zzd(Lcom/google/android/gms/internal/zzag$zza;)V

    new-instance v2, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzbw;->zzET()Z

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    return-object v2
.end method

.method zza(Lcom/google/android/gms/internal/zzsh$zze;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzck;)Lcom/google/android/gms/tagmanager/zzbw;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzsh$zze;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzck;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsh$zze;->zzFU()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsh$zza;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzck;->zzEL()Lcom/google/android/gms/tagmanager/zzch;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzsh$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzch;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/tagmanager/zzck;->zzf(Lcom/google/android/gms/internal/zzag$zza;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzbw;->zzET()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    :goto_43
    return-object v0

    :cond_44
    if-eqz v1, :cond_4f

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzbw;->zzET()Z

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v2

    :goto_4d
    move v1, v0

    goto :goto_b

    :cond_4f
    move v0, v3

    goto :goto_4d

    :cond_51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsh$zze;->zzFT()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsh$zza;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzck;->zzEM()Lcom/google/android/gms/tagmanager/zzch;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Lcom/google/android/gms/internal/zzsh$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzch;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_92

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/tagmanager/zzck;->zzf(Lcom/google/android/gms/internal/zzag$zza;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzbw;->zzET()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    goto :goto_43

    :cond_92
    if-eqz v1, :cond_9c

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzbw;->zzET()Z

    move-result v0

    if-eqz v0, :cond_9c

    move v1, v2

    goto :goto_59

    :cond_9c
    move v1, v3

    goto :goto_59

    :cond_9e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/tagmanager/zzck;->zzf(Lcom/google/android/gms/internal/zzag$zza;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/tagmanager/zzbw;-><init>(Ljava/lang/Object;Z)V

    goto :goto_43
.end method

.method zza(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzco;)Lcom/google/android/gms/tagmanager/zzbw;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zze;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zze;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zza;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zze;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zze;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zza;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zze;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzco;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zza;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcp$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzcp$3;-><init>(Lcom/google/android/gms/tagmanager/zzcp;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, v0, p8}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcp$zza;Lcom/google/android/gms/tagmanager/zzco;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v0

    return-object v0
.end method

.method zza(Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzco;)Lcom/google/android/gms/tagmanager/zzbw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zze;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzco;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zza;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcp$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzcp$4;-><init>(Lcom/google/android/gms/tagmanager/zzcp;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcp$zza;Lcom/google/android/gms/tagmanager/zzco;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v0

    return-object v0
.end method

.method zza(Lcom/google/android/gms/tagmanager/zzak;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfo:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzak;)V

    return-void
.end method

.method zzb(Lcom/google/android/gms/tagmanager/zzak;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfm:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzak;)V

    return-void
.end method

.method zzc(Lcom/google/android/gms/tagmanager/zzak;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfn:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzak;)V

    return-void
.end method

.method declared-synchronized zzfA(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbft:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzfd(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzcp;->zzfA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfl:Lcom/google/android/gms/tagmanager/zzah;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzah;->zzfq(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzag;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/zzag;->zzEC()Lcom/google/android/gms/tagmanager/zzu;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfr:Ljava/util/Set;

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/zzu;->zzEu()Lcom/google/android/gms/tagmanager/zzco;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzco;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsh$zza;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfm:Ljava/util/Map;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/zzu;->zzEt()Lcom/google/android/gms/tagmanager/zzch;

    move-result-object v6

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/zzsh$zza;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzch;)Lcom/google/android/gms/tagmanager/zzbw;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3d

    goto :goto_22

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_40
    :try_start_40
    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/zzag;->zzED()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzfA(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3d

    monitor-exit p0

    return-void
.end method

.method public zzfz(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzbw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfu:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcp;->zzbfl:Lcom/google/android/gms/tagmanager/zzah;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzah;->zzfp(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzag;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzag;->zzEB()Lcom/google/android/gms/tagmanager/zzbj;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzbj;)Lcom/google/android/gms/tagmanager/zzbw;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzag;->zzED()V

    return-object v1
.end method
